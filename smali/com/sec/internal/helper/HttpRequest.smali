.class public Lcom/sec/internal/helper/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;,
        Lcom/sec/internal/helper/HttpRequest$CloseOperation;,
        Lcom/sec/internal/helper/HttpRequest$Operation;,
        Lcom/sec/internal/helper/HttpRequest$HttpRequestException;,
        Lcom/sec/internal/helper/HttpRequest$UploadProgress;,
        Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;
    }
.end annotation


# static fields
.field public static final BOUNDARY:Ljava/lang/String; = "00content0boundary00"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static CONNECTION_FACTORY:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory; = null

.field private static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHENTICATION_INFO:Ljava/lang/String; = "Authentication-Info"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_RANGE:Ljava/lang/String; = "Range"

.field public static final HEADER_RETRY_AFTER:Ljava/lang/String; = "Retry-After"

.field public static final HEADER_SUPPORTED_VERSIONS:Ljava/lang/String; = "Supported-Versions"

.field public static final HEADER_TRANSFER_ENCODING:Ljava/lang/String; = "Transfer-Encoding"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEADER_WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private bufferSize:I

.field private connection:Ljava/net/HttpURLConnection;

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private network:Landroid/net/Network;

.field private output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

.field private progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

.field private final requestMethod:Ljava/lang/String;

.field private totalSize:J

.field private totalWritten:J

.field private uncompress:Z

.field private final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 274
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    .line 276
    sput-object v0, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 378
    sget-object v0, Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;

    sput-object v0, Lcom/sec/internal/helper/HttpRequest;->CONNECTION_FACTORY:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/CharSequence;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->ignoreCloseExceptions:Z

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->uncompress:Z

    .line 599
    const/16 v0, 0x2000

    iput v0, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    .line 601
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    .line 603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    .line 611
    sget-object v0, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    .line 621
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    nop

    .line 625
    iput-object p2, p0, Lcom/sec/internal/helper/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 626
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->ignoreCloseExceptions:Z

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->uncompress:Z

    .line 599
    const/16 v0, 0x2000

    iput v0, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    .line 601
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    .line 603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    .line 611
    sget-object v0, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    .line 635
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest;->url:Ljava/net/URL;

    .line 636
    iput-object p2, p0, Lcom/sec/internal/helper/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 637
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 73
    invoke-static {p0}, Lcom/sec/internal/helper/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/helper/HttpRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/HttpRequest;

    .line 73
    iget v0, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/internal/helper/HttpRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/helper/HttpRequest;

    .line 73
    iget-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    return-wide v0
.end method

.method static synthetic access$214(Lcom/sec/internal/helper/HttpRequest;J)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/helper/HttpRequest;
    .param p1, "x1"    # J

    .line 73
    iget-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/internal/helper/HttpRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/helper/HttpRequest;

    .line 73
    iget-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/helper/HttpRequest$UploadProgress;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/HttpRequest;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    return-object v0
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .locals 4

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->httpProxyHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lcom/sec/internal/helper/HttpRequest;->CONNECTION_FACTORY:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest;->url:Ljava/net/URL;

    invoke-direct {p0}, Lcom/sec/internal/helper/HttpRequest;->createProxy()Ljava/net/Proxy;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/helper/HttpRequest;->network:Landroid/net/Network;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;Ljava/net/Proxy;Landroid/net/Network;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .local v0, "connection":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 649
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    sget-object v0, Lcom/sec/internal/helper/HttpRequest;->CONNECTION_FACTORY:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest;->url:Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/internal/helper/HttpRequest;->network:Landroid/net/Network;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;Landroid/net/Network;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 651
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    return-object v0

    .line 653
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private createProxy()Ljava/net/Proxy;
    .locals 5

    .line 640
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/sec/internal/helper/HttpRequest;->httpProxyHost:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/helper/HttpRequest;->httpProxyPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 553
    new-instance v0, Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 288
    const-class v0, Lcom/sec/internal/helper/HttpRequest;

    monitor-enter v0

    .line 289
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    .line 290
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/internal/helper/HttpRequest$1;

    invoke-direct {v3}, Lcom/sec/internal/helper/HttpRequest$1;-><init>()V

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .local v1, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 312
    .local v2, "context":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 313
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    sput-object v3, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .end local v2    # "context":Ljavax/net/ssl/SSLContext;
    goto :goto_0

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Security exception configuring SSL context"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, "ioException":Ljava/io/IOException;
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 318
    new-instance v4, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v4, v3}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 322
    .end local v1    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    .end local v3    # "ioException":Ljava/io/IOException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    monitor-exit v0

    return-object v1

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    .line 327
    const-class v0, Lcom/sec/internal/helper/HttpRequest;

    monitor-enter v0

    .line 328
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$2;

    invoke-direct {v1}, Lcom/sec/internal/helper/HttpRequest$2;-><init>()V

    sput-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 337
    :cond_0
    sget-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    monitor-exit v0

    return-object v1

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .line 279
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 280
    return-object p0

    .line 282
    :cond_0
    const-string v0, "UTF-8"

    return-object v0
.end method

.method private incrementTotalSize(J)Lcom/sec/internal/helper/HttpRequest;
    .locals 4
    .param p1, "size"    # J

    .line 1182
    iget-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    .line 1185
    :cond_0
    iget-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    .line 1186
    return-object p0
.end method

.method public static post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 562
    new-instance v0, Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 571
    new-instance v0, Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 580
    new-instance v0, Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public acceptEncoding(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .line 1029
    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "authorization"    # Ljava/lang/String;

    .line 1047
    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public body()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 805
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 792
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/helper/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 793
    invoke-static {p1}, Lcom/sec/internal/helper/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 794
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public buffer()Ljava/io/BufferedInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 815
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bufferSize(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p1, "size"    # I

    .line 761
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 764
    iput p1, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    .line 765
    return-object p0

    .line 762
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .line 774
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->contentLength()I

    move-result v0

    .line 775
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 776
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-object v1

    .line 778
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v1
.end method

.method public charset()Ljava/lang/String;
    .locals 2

    .line 1001
    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/HttpRequest;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chunk(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "size"    # I

    .line 747
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 748
    return-object p0
.end method

.method protected closeOutput()Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    if-nez v0, :cond_0

    .line 1196
    return-object p0

    .line 1198
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/helper/HttpRequest;->multipart:Z

    if-eqz v1, :cond_1

    .line 1199
    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    .line 1201
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_2

    .line 1203
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1204
    :catch_0
    move-exception v0

    .line 1206
    :goto_0
    goto :goto_1

    .line 1208
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->close()V

    .line 1210
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    .line 1211
    return-object p0
.end method

.method protected closeOutputQuietly()Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1222
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutput()Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 682
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 683
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public connectTimeout(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "timeout"    # I

    .line 893
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 894
    return-object p0
.end method

.method public contentEncoding()Ljava/lang/String;
    .locals 1

    .line 1038
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .locals 1

    .line 1079
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->intHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public contentLength(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "contentLength"    # I

    .line 1097
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1098
    return-object p0
.end method

.method public contentLength(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "contentLength"    # Ljava/lang/String;

    .line 1088
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->contentLength(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentRange(JJJ)Lcom/sec/internal/helper/HttpRequest;
    .locals 3
    .param p1, "first"    # J
    .param p3, "last"    # J
    .param p5, "size"    # J

    .line 1133
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 1137
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "bytes %s-%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .line 1056
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 4
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .line 1065
    const-string v0, "Content-Type"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1066
    const-string v1, "; charset="

    .line 1067
    .local v1, "separator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0

    .line 1069
    .end local v1    # "separator":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;
    .locals 8
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    new-instance v7, Lcom/sec/internal/helper/HttpRequest$3;

    iget-boolean v3, p0, Lcom/sec/internal/helper/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/helper/HttpRequest$3;-><init>(Lcom/sec/internal/helper/HttpRequest;Ljava/io/Closeable;ZLjava/io/FileOutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1163
    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest$3;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/HttpRequest;

    .line 1146
    return-object v0
.end method

.method public disconnect()Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 737
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 738
    return-object p0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 3

    .line 695
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 696
    return-object v1

    .line 698
    :cond_0
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_1

    .line 700
    :try_start_0
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    return-object v1

    .line 705
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v1
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/sec/internal/helper/HttpRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .line 954
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 958
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 959
    .local v1, "length":I
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 960
    .local v3, "start":I
    if-eqz v3, :cond_7

    if-ne v3, v1, :cond_1

    goto :goto_1

    .line 964
    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 965
    .local v5, "end":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 966
    move v5, v1

    .line 969
    :cond_2
    :goto_0
    if-ge v3, v5, :cond_6

    .line 970
    const/16 v7, 0x3d

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 971
    .local v7, "nameEnd":I
    if-eq v7, v6, :cond_4

    if-ge v7, v5, :cond_4

    .line 972
    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 973
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 974
    .local v8, "paramValue":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 975
    .local v9, "valueLength":I
    if-eqz v9, :cond_4

    .line 976
    const/4 v0, 0x2

    if-le v9, v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x22

    if-ne v2, v0, :cond_3

    add-int/lit8 v0, v9, -0x1

    .line 977
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v2, v0, :cond_3

    .line 978
    add-int/lit8 v0, v9, -0x1

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 980
    :cond_3
    return-object v8

    .line 985
    .end local v8    # "paramValue":Ljava/lang/String;
    .end local v9    # "valueLength":I
    :cond_4
    add-int/lit8 v3, v5, 0x1

    .line 986
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 987
    if-ne v5, v6, :cond_5

    .line 988
    move v5, v1

    .line 990
    .end local v7    # "nameEnd":I
    :cond_5
    goto :goto_0

    .line 992
    :cond_6
    return-object v0

    .line 961
    .end local v5    # "end":I
    :cond_7
    :goto_1
    return-object v0

    .line 955
    .end local v1    # "length":I
    .end local v3    # "start":I
    :cond_8
    :goto_2
    return-object v0
.end method

.method public getPartHeaderLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "firstPart"    # Z

    .line 1442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1443
    .local v0, "header":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    .line 1444
    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1446
    :cond_0
    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1450
    .local v1, "partBuffer":Ljava/lang/StringBuilder;
    const-string v2, "form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    if-eqz p2, :cond_1

    .line 1452
    const-string v2, "\"; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    :cond_1
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    if-eqz p3, :cond_2

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The length of header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpRequest"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 903
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    return-object p0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutputQuietly()Lcom/sec/internal/helper/HttpRequest;

    .line 914
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public intHeader(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 925
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/HttpRequest;->intHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public intHeader(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 935
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutputQuietly()Lcom/sec/internal/helper/HttpRequest;

    .line 936
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 724
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 725
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .line 1428
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ok()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected openOutput()Lcom/sec/internal/helper/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    if-eqz v0, :cond_0

    .line 1235
    return-object p0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1238
    nop

    .line 1239
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, "charset":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    .line 1242
    return-object p0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .line 945
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/sec/internal/helper/HttpRequest;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1305
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    .local v0, "fileStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1308
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/helper/HttpRequest;->incrementTotalSize(J)Lcom/sec/internal/helper/HttpRequest;

    .line 1309
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/internal/helper/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1311
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v1    # "stream":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1313
    .end local v0    # "fileStream":Ljava/io/InputStream;
    nop

    .line 1314
    return-object p0

    .line 1305
    .restart local v0    # "fileStream":Ljava/io/InputStream;
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileStream":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/sec/internal/helper/HttpRequest;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "filename":Ljava/lang/String;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "part":Ljava/io/File;
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local v0    # "fileStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/sec/internal/helper/HttpRequest;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "filename":Ljava/lang/String;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "part":Ljava/io/File;
    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/helper/HttpRequest;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "filename":Ljava/lang/String;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "part":Ljava/io/File;
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1311
    .end local v0    # "fileStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/sec/internal/helper/HttpRequest;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "filename":Ljava/lang/String;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "part":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1325
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->startPart()Lcom/sec/internal/helper/HttpRequest;

    .line 1326
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 1327
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p4, v0}, Lcom/sec/internal/helper/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    nop

    .line 1331
    return-object p0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1288
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->startPart()Lcom/sec/internal/helper/HttpRequest;

    .line 1289
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 1290
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    nop

    .line 1294
    return-object p0

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1340
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p1, "callback"    # Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    .line 1172
    if-nez p1, :cond_0

    .line 1173
    sget-object v0, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    goto :goto_0

    .line 1175
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    .line 1177
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    .line 1178
    return-object p0
.end method

.method public range(JJ)Lcom/sec/internal/helper/HttpRequest;
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 1116
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 1120
    cmp-long v0, p3, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Range"

    if-gez v0, :cond_0

    .line 1121
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "bytes=%s-"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0

    .line 1123
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "bytes=%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0

    .line 1117
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have negative start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTimeout(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "timeout"    # I

    .line 883
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 884
    return-object p0
.end method

.method public receive(Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 871
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send(Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1352
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->openOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 1353
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    nop

    .line 1357
    return-object p0

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1370
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->openOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 1371
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    nop

    .line 1375
    return-object p0

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public setFollowRedirect(Z)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "isFollowRedirect"    # Z

    .line 1467
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1468
    return-object p0
.end method

.method public setParams(Landroid/net/Network;ZIILjava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "useCache"    # Z
    .param p3, "connectTimeout"    # I
    .param p4, "readTimeout"    # I
    .param p5, "userAgent"    # Ljava/lang/String;

    .line 1472
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/HttpRequest;->useCaches(Z)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 1473
    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/HttpRequest;->connectTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/HttpRequest;->readTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 1474
    invoke-virtual {v0, p5}, Lcom/sec/internal/helper/HttpRequest;->userAgent(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->setFollowRedirect(Z)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 1472
    return-object v0
.end method

.method protected startPart()Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1251
    iget-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->multipart:Z

    if-nez v0, :cond_0

    .line 1252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->multipart:Z

    .line 1253
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->openOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 1254
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    goto :goto_0

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    .line 1258
    :goto_0
    return-object p0
.end method

.method public stream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 825
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 827
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .local v0, "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 828
    .end local v0    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 832
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 833
    .local v0, "stream":Ljava/io/InputStream;
    if-nez v0, :cond_2

    .line 835
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 842
    goto :goto_0

    .line 836
    :catch_1
    move-exception v1

    .line 837
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->contentLength()I

    move-result v2

    if-gtz v2, :cond_1

    .line 840
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    goto :goto_0

    .line 838
    :cond_1
    new-instance v2, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 846
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/helper/HttpRequest;->uncompress:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->contentEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 850
    :cond_3
    :try_start_2
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 851
    :catch_2
    move-exception v1

    .line 852
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_4

    .line 854
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 857
    goto :goto_1

    .line 855
    :catch_3
    move-exception v2

    .line 856
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v3, v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 859
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_1
    new-instance v2, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 847
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trustAllCerts()Lcom/sec/internal/helper/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1386
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1387
    .local v0, "connection":Ljava/net/HttpURLConnection;
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 1388
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 1389
    invoke-static {}, Lcom/sec/internal/helper/HttpRequest;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1391
    :cond_0
    return-object p0
.end method

.method public trustAllHosts()Lcom/sec/internal/helper/HttpRequest;
    .locals 3

    .line 1403
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1404
    .local v0, "connection":Ljava/net/HttpURLConnection;
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 1405
    const-string v1, "HttpRequest"

    const-string/jumbo v2, "trustAllHosts() - this connections is instance of HttpsURLConnection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 1408
    invoke-static {}, Lcom/sec/internal/helper/HttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1410
    :cond_0
    return-object p0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .line 1419
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public useCaches(Z)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "useCaches"    # Z

    .line 1019
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1020
    return-object p0
.end method

.method public useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;
    .locals 0
    .param p1, "network"    # Landroid/net/Network;

    .line 1437
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest;->network:Landroid/net/Network;

    .line 1438
    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 1010
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1268
    .local v0, "partBuffer":Ljava/lang/StringBuilder;
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    if-eqz p2, :cond_0

    .line 1270
    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Disposition"

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/helper/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 1274
    if-eqz p3, :cond_1

    .line 1275
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p3}, Lcom/sec/internal/helper/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 1277
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public wwwAuthenticate()Ljava/lang/String;
    .locals 1

    .line 1107
    const-string v0, "WWW-Authenticate"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
