/// Contains the hard-coded settings per flavor.
class FlavorSettings {
  String baseURL;
  String favURL;
  String imageURL;
  String requestUploadLink;
  String requestUploadFile;
  String requestCompanyLogo;
  // ?TODO Add any additional flavor-specific settings here.
  //localhost: "http://192.168.0.202:5000/",
  FlavorSettings.dev()
      : baseURL = "http://devapi.finemake.in/",
        imageURL = "https://d2fh4xnly1l8ej.cloudfront.net/",
        favURL =
            "https://fy85m4ojug.execute-api.ap-south-1.amazonaws.com/dev/api/v1/generate-pdf/",
        requestUploadLink =
            "https://7ur29uaplf.execute-api.ap-south-1.amazonaws.com/staging/customer/media/upload-urls?n=1",
        requestUploadFile =
            "https://clhzx5a368.execute-api.ap-south-1.amazonaws.com/dev/api/v1/upload-files?p=originals/receipt",
        requestCompanyLogo =
            "https://clhzx5a368.execute-api.ap-south-1.amazonaws.com/dev/api/v1/upload-files?p=originals/company_logo";

  FlavorSettings.prod()
      : baseURL = "https://prodapi.finemake.in/",
        imageURL = "https://doner438qk4u1.cloudfront.net/",
        favURL =
            "https://zuzoafp56l.execute-api.ap-south-1.amazonaws.com/prod/api/v1/generate-pdf/",
        requestUploadLink =
            "https://7ur29uaplf.execute-api.ap-south-1.amazonaws.com/staging/customer/media/upload-urls?n=1",
        requestUploadFile =
            "https://18gyfef327.execute-api.ap-south-1.amazonaws.com/prod/api/v1/upload-files?p=originals/receipt",
        requestCompanyLogo =
            "https://clhzx5a368.execute-api.ap-south-1.amazonaws.com/prod/api/v1/upload-files?p=originals/company_logo";
}
