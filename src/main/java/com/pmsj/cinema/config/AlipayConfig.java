package com.pmsj.cinema.config;

/**
 * @author mhd
 * @className ApplyConfig
 * @description TODO
 * @create 2020/7/10
 * @since 1.0.0
 */

public class AlipayConfig{
    public static String app_id = "2016102800772685";
    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCRFu9jg4sm9rNqYUmqa3jupO5LjkMMRG5h6h+HP7NZ4gfGOn/G8LZIe9sAhCshEW9V0MmYThPNkYlUBZ7jEBx1LxhTSC/pNJxaLhLY8voZTdsvb2OAtjfdbQMDE1ooPziL8/SKsZcBr42mJPTe3NiQnjwbx7U1zu6bmuHtWB3hKxjHIYC1miPgd9NBD96HK9zwOBlFQi4R3z0ED0BjfdGqqf7P4DkVp12zLQThRH5RggZbMa532smyZ8HL9KlnLmyn6UibrfDU7StKjsN+1kX6ylNlncS7wXTDs1oSTlBeRfomhc1QZoBCBmubq3iROJvJR8EuTN+cXBPpteuKFM3RAgMBAAECggEAcjnoRiRuDUL0hbAKWw05rEhVA08BIktNy/CS2dwgy4bUMBAmQO2J1Q8NoB5uBh6/1IQH8sylcpY909SI/qLUhL2LHSYb8jHlVmonlH3WwM023uWHJPJQkRcd4/H8bOs5DZYG1Jp0FHOtxTwbPMoKBfFNyWE1HSPJXuBVNpLFE1u2veMcTITMDAox1CQyYiN/Q1+8SW/QFsIkAmTnslBNdsCJVC4zEgskVcxfSLeNvxkU4vO+ny6CaDiImdjHfcwtDTvEJRQd3EbpopZth3Ss/BdbxrT1XeRQ19Gx2jBvDwxod9nESg3tgu+tMzdXQTlKOWri9/NUBEiHUm5ni13zQQKBgQDLpXYsAKaIfnNcP/bwNU3WwKSeH6PygCsAcAFk3RifeQ+kb4h4x3kz8V98/3dbahgu32LNRaernc9xmwJYt1KMMipfh4XV97MLxzwucXW8QcIjmjSscQUSToTL+W9bt5q8m8sQRY8R9YMFpSjM6Ow03cO02sjyVnWLuwGHUUQkdQKBgQC2Y7B66ccMe+La/8wcyejQTuYajFfUX9vB0ziTn/9OJG9OOgqXet0ZJA8yjni8ny2RZ8y6exwv2XAUj30JG5FHjjZhKmxSl1f7iy52BdgmkNxn7hk7ch9x26MBi3kd+VohUaPLkiTarSPWM0wt/JBhCDBBGpWM+tGJTIuTyQMobQKBgQCpMSoR+uRhSLWtchNGlPK7tkfOe7kpc6TGc0glNbAMZndBhcyblBa1uhc8cb8HewjmgH/Ezdc1NSKxXzi+3mg9xDwCLEVcdLQT2A6/A1Lu+q9CBw82KZwuDoA0O2NyjwOHKeS2+yOXpyOZIBPa0rXUYl8DtjX3aS+1zMPDWhhENQKBgGokwgQGIS0GvBMvYp4ucysnf4pbupGB5+Z5AigHqRDU62HfLWLSwfFrptyJRYKgMGi6u86a7uB57lxI1T+Dp5y5CrSpd7jpEu71JOjSpeRr0Zk6W7zYwawFYmv3u1jSUL2rQWOrfX812/FAkUkB/xQ5K7v3uKj/HwqEXYZ4KTpRAoGAH7coTrC3uYflvZ+IRd4ONB5m2FIh0exsiGsBIiukN7IDEmPMmm+77KsY9+XM4vLHacJ7KrJgn/+pGbwMZ+Ouol2EOVlZdE8Es0YCsgLagh0VRdiWP9gYYutEnDd5fia/VdOXmpoeqpB6lA+JezEqwnTt8WDw2+MkGgq1t58w5RU=";
    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlfFe0u0kYrctrQd0IfvhJbAd7eT4aCs0b4q8sE4hPC52rO1kbGbHy0tJ+BmIRMyaQso1E1bg0Mgpv9hJ6gg/gUSoZC6PfEd6/0Z6DE0cii2+pruhNdKk1ka03lcn8XXHITjGNcfwU4xw75dH5synO9PqS6QlVCgzHT+2v/9YtC42T7N/nP0PcaTgiMTvA2HAx2fTDp8zL+rvxtsTjhtF6zCN7O4lJapwRlpQVms+j9H4fNBBE1Zc10BnEiz42HIBeYBGO86JHj3ztlwScYZ3eKtfkt1NBUz/dahhSOU0DIHVXNVPyULnSAVMsYOBACRpgJE0k+owCDJy4OrGLsrEzQIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8080/alipay/notify";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String   return_url = "http://localhost:8080/alipay/return";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

}
