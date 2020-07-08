package com.pmsj.cinema.system.controller;

import com.github.pagehelper.PageInfo;
import com.pmsj.cinema.business.service.MovieActorService;
import com.pmsj.cinema.common.entity.Cast;
import com.pmsj.cinema.common.entity.Movie;
import com.pmsj.cinema.common.entity.MovieTpye;
import com.pmsj.cinema.common.entity.Result;
import com.pmsj.cinema.common.mapper.MovieMapper;
import com.pmsj.cinema.common.vo.CastVo;
import com.pmsj.cinema.common.vo.CinemaVo;
import com.pmsj.cinema.system.service.MovieService;
import com.pmsj.cinema.system.util.ReturnUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/*
 * @Author 潘升
 * @Description //TODO $
 * @Date 2020/7/6 19:10
 **/
@Controller
@RequestMapping("movie")
public class MovieController {
    @Autowired
    MovieService movieService;

    @RequestMapping("getAllMovie")
    @ResponseBody
    public ReturnUtil getAllMovie(Integer page, Integer limit) {


        if (page == null || page == 0) {
            page = 1;
        }
        if (limit == null || limit == 0) {
            limit = 5;
        }

        PageInfo<Movie> allMovies = movieService.getAllMovies(page, limit);

        ReturnUtil returnUtil = new ReturnUtil(0, "success", allMovies.getTotal(), allMovies.getList());
        return returnUtil;
    }

    @RequestMapping("addMovie")
    @ResponseBody
    public Result addMovie(HttpServletRequest request, Movie movie, String[] movieTypes, String[] cast0, String[] cast1, String[] cast1Role, @RequestParam(value = "image", required = false) MultipartFile image) throws IOException {

        System.out.println(movie);

        movie.setMovieTime(movie.getMovieTime() + "分钟");

        if (image == null) {
            return new Result<>().error("图片为空", null);
        }


        //判断用户是否选择图片
        if (image.getOriginalFilename() == null || image.getOriginalFilename().length() <= 0) {
        } else {
//        image
            String fileName = image.getOriginalFilename();
            String substring = "";
            if (fileName.lastIndexOf(".") != -1) {
                substring = fileName.substring(fileName.lastIndexOf("."));
            }
            String name = UUID.randomUUID().toString().replaceAll("-", "") + substring;
            request.getServletPath();

            String property = System.getProperty("user.dir");
            String realPath = property + "\\src\\main\\resources\\static\\img";

            movie.setMovieImg("/img/" + name);
            System.out.println(realPath);
//            image.getInputStream. (realPath + "/" + name);
//            goods.setImage("/images/goods/" + name);
            try {
                File fileMkdir = new File(realPath);

                if (!fileMkdir.exists()) {
                    fileMkdir.mkdir();
                }
                //定义输出流 将文件保存在D盘    file.getOriginalFilename()为获得文件的名字
                FileOutputStream os = new FileOutputStream(fileMkdir.getPath() + "\\" + name);
                InputStream in = image.getInputStream();
                int b = 0;
                while ((b = in.read()) != -1) { //读取文件
                    os.write(b);
                }
                os.flush(); //关闭流
                in.close();
                os.close();
            } catch (Exception e) {
                e.printStackTrace();
                ;
                System.out.println("上传失败！");
            }
        }

        movieService.addMovie(movie, movieTypes, cast0, cast1, cast1Role);

        return null;
    }
}
