.class public Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;
    }
.end annotation


# static fields
.field protected static final CHUNKED:Ljava/lang/String; = "chunked"

.field protected static final GZIP:Ljava/lang/String; = "gzip"

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final MAX_CHUNK_SIZE:I = 0x7d000

.field protected static final MAX_TIMEOUT:J = 0x7530L

.field protected static final MIN_CHUNK_SIZE:I = 0xf000

.field protected static final SSL_PROTOCOL:Ljava/lang/String; = "TLS"

.field protected static sCookieStore:Ljava/net/CookieStore;


# instance fields
.field protected final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpMethodName:Ljava/lang/String;

.field protected mHttpURLConn:Ljava/net/HttpURLConnection;

.field protected mNetwork:Landroid/net/Network;

.field protected final mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneId:I

.field protected mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

.field protected mURL:Ljava/net/URL;

.field protected mURLConn:Ljava/net/URLConnection;

.field protected mUrl:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    const-class v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    .line 87
    .local v0, "cookieManager":Ljava/net/CookieManager;
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 88
    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->sCookieStore:Ljava/net/CookieStore;

    .line 89
    .end local v0    # "cookieManager":Ljava/net/CookieManager;
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURL:Ljava/net/URL;

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    .line 79
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    .line 83
    const-string v0, "GET"

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    .line 92
    iput p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    .line 93
    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/config/adapters/HttpAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/config/adapters/HttpAdapter;Ljava/net/HttpURLConnection;)[B
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapter;
    .param p1, "x1"    # Ljava/net/HttpURLConnection;

    .line 64
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getPostResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object v0

    return-object v0
.end method

.method private getPostResBody(Ljava/net/HttpURLConnection;)[B
    .locals 12
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 578
    const-string v0, "Error closing input stream: "

    const/4 v1, 0x0

    .line 579
    .local v1, "res":[B
    const/4 v2, 0x0

    .line 580
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 581
    .local v3, "bodyReadTotal":I
    const/4 v4, 0x0

    .line 582
    .local v4, "bodyReadPartial":I
    const/4 v5, 0x0

    .line 583
    .local v5, "bodyTemp":[B
    const/4 v6, 0x0

    .line 584
    .local v6, "body":[B
    const-string v7, "Content-Length"

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 585
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 586
    .local v7, "contentLength":I
    if-gtz v7, :cond_0

    .line 587
    return-object v6

    .line 589
    :cond_0
    mul-int/lit8 v8, v7, 0x2

    new-array v5, v8, [B

    .line 590
    new-array v6, v7, [B

    .line 592
    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v8

    .line 593
    :goto_0
    array-length v8, v5

    sub-int/2addr v8, v3

    invoke-virtual {v2, v5, v3, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    move v4, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 595
    add-int/2addr v3, v4

    goto :goto_0

    .line 597
    :cond_1
    if-eq v7, v3, :cond_2

    .line 598
    sget-object v8, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wrong http header(header:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",actual:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_2
    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    nop

    .line 607
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 611
    :cond_3
    :goto_1
    goto :goto_6

    .line 609
    :catch_0
    move-exception v8

    .line 610
    .local v8, "e":Ljava/io/IOException;
    sget-object v9, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 605
    :catchall_0
    move-exception v8

    goto :goto_3

    .line 602
    :catch_1
    move-exception v8

    .line 603
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v9, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v10, "fail to read body"

    invoke-static {v9, v10}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 606
    .end local v8    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 607
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 609
    :catch_2
    move-exception v8

    .line 610
    .restart local v8    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 606
    .end local v8    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v2, :cond_4

    .line 607
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 609
    :catch_3
    move-exception v9

    .line 610
    .local v9, "e":Ljava/io/IOException;
    sget-object v10, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 611
    .end local v9    # "e":Ljava/io/IOException;
    :cond_4
    :goto_4
    nop

    .line 612
    :goto_5
    throw v8

    .line 614
    .end local v7    # "contentLength":I
    :cond_5
    :goto_6
    return-object v6
.end method


# virtual methods
.method protected addReqHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 12
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 425
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "+++ request header"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 426
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 427
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .line 428
    .local v2, "first":Z
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 429
    .local v4, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 430
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 432
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_2
    const/4 v2, 0x0

    .line 435
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->displayReqHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 437
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "first":Z
    :cond_1
    goto :goto_0

    .line 438
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "--- request header"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    sget-boolean v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->IS_ENGG_BIN:Z

    if-eqz v0, :cond_9

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "httpHeaders":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "MM/dd/yyyy HH:mm:ss.SSS"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 443
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "timestamp":Ljava/lang/String;
    instance-of v3, p1, Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "POST"

    if-eqz v3, :cond_4

    .line 445
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "HTTPS POST\n"

    goto :goto_3

    .line 446
    :cond_3
    const-string v3, "HTTPS GET\n"

    :goto_3
    move-object v0, v3

    goto :goto_5

    .line 448
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "HTTP POST\n"

    goto :goto_4

    .line 449
    :cond_5
    const-string v3, "HTTP GET\n"

    :goto_4
    move-object v0, v3

    .line 451
    :goto_5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 452
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 453
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "Host"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "\n"

    const-string v9, ": "

    if-eqz v7, :cond_6

    .line 454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 456
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .end local v6    # "value":Ljava/lang/String;
    :goto_8
    goto :goto_7

    .line 459
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_7
    goto :goto_6

    .line 460
    :cond_8
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v5, v0

    move-object v8, v2

    invoke-interface/range {v3 .. v11}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .end local v0    # "httpHeaders":Ljava/lang/String;
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v2    # "timestamp":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method public close()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;->close()Z

    move-result v0

    return v0
.end method

.method protected configureUrlConnection(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->createReqUrl(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->openUrlConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setUrlConnection()V

    .line 245
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "configure httpUrlConnection based on urlConnection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method protected createReqUrl(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)Ljava/lang/StringBuffer;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reqUrl"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 252
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "&"

    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 255
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "utf-8"

    const-string v3, "%"

    const-string v4, "UnsupportedEncodingException occur. use plain string"

    const-string v5, "="

    const-string v6, "?"

    const/16 v7, 0x2f

    if-eqz v1, :cond_4

    .line 256
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_0

    .line 257
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 259
    :cond_0
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 261
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :try_start_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 265
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    goto :goto_0

    .line 268
    :cond_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 269
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 271
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_1
    goto :goto_2

    .line 273
    :catch_0
    move-exception v7

    .line 274
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v9, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-static {v8, v9, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v0, "postData":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_5

    .line 284
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 286
    :cond_5
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 288
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 289
    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    :cond_6
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :try_start_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 295
    sget-object v7, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v8, "already encoded. use plain string"

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 298
    :cond_7
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    :goto_4
    goto :goto_5

    .line 300
    :catch_1
    move-exception v7

    .line 301
    .restart local v7    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_5
    goto :goto_3

    .line 305
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    .end local v0    # "postData":Ljava/lang/StringBuilder;
    :cond_9
    :goto_6
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    :cond_a
    return-object p2
.end method

.method protected displayReqHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 465
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 466
    return-void
.end method

.method protected getContentLengthBody([BLjava/net/HttpURLConnection;I)[B
    .locals 8
    .param p1, "body"    # [B
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .param p3, "contentLength"    # I

    .line 504
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 505
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 506
    .local v1, "bodyReadPartial":I
    const/4 v2, 0x0

    .line 507
    .local v2, "bodyReadTotal":I
    mul-int/lit8 v3, p3, 0x2

    :try_start_1
    new-array v3, v3, [B

    .line 508
    .local v3, "bodyTemp":[B
    new-array v4, p3, [B

    move-object p1, v4

    .line 509
    :goto_0
    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v1, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 510
    add-int/2addr v2, v1

    goto :goto_0

    .line 512
    :cond_0
    if-eq p3, v2, :cond_1

    .line 513
    sget-object v4, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContentLengthBody: wrong http header(header:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",actual:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 515
    :cond_1
    const/4 v4, 0x0

    invoke-static {v3, v4, p1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    .end local v1    # "bodyReadPartial":I
    .end local v2    # "bodyReadTotal":I
    .end local v3    # "bodyTemp":[B
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 520
    .end local v0    # "in":Ljava/io/InputStream;
    return-object p1

    .line 504
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapter;
    .end local p1    # "body":[B
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    .end local p3    # "contentLength":I
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 520
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapter;
    .restart local p1    # "body":[B
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    .restart local p3    # "contentLength":I
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v3, "getContentLengthBody: fail to read body"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 518
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 520
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-object p1
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;->getNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method protected getResBody(Ljava/net/HttpURLConnection;)[B
    .locals 6
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "body":[B
    const-string v1, "Content-Length"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 563
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 564
    .local v1, "contentLength":I
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResBody: Content-Length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 565
    if-gtz v1, :cond_0

    .line 566
    return-object v0

    .line 568
    :cond_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getContentLengthBody([BLjava/net/HttpURLConnection;I)[B

    move-result-object v0

    .line 570
    .end local v1    # "contentLength":I
    :cond_1
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 571
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v3, "getResBody: Transfer-Encoding"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 572
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getTransferEncodingBody([BLjava/net/HttpURLConnection;)[B

    move-result-object v0

    .line 574
    :cond_2
    return-object v0
.end method

.method protected getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 1
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 500
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getResStatusCode(Ljava/net/HttpURLConnection;)I
    .locals 5
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, "statusCode":I
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 495
    :goto_0
    return v0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v4, "getResStatusCode: fail to read status code"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 474
    instance-of v2, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_0

    .line 475
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v4, "SSLHandshakeException: response code define 800"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    const/16 v0, 0x320

    goto :goto_2

    .line 477
    :cond_0
    instance-of v2, v1, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_1

    .line 478
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v4, "SSLException: response code define 801"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    const/16 v0, 0x321

    goto :goto_2

    .line 480
    :cond_1
    instance-of v2, v1, Ljava/net/ConnectException;

    if-nez v2, :cond_5

    instance-of v2, v1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 483
    :cond_2
    instance-of v2, v1, Ljava/net/SocketException;

    if-eqz v2, :cond_3

    .line 484
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v4, "SocketException: response code define 803"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    const/16 v0, 0x323

    goto :goto_2

    .line 486
    :cond_3
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_4

    .line 487
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v4, "SocketTimeoutException: response code define 804"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    const/16 v0, 0x324

    goto :goto_2

    .line 489
    :cond_4
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_6

    .line 490
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v4, "UnknownHostException: response code define 805"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    const/16 v0, 0x325

    goto :goto_2

    .line 481
    :cond_5
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v4, "ConnectException: response code define 802"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 482
    const/16 v0, 0x322

    .line 493
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 495
    :goto_3
    return v0
.end method

.method protected getTransferEncodingBody([BLjava/net/HttpURLConnection;)[B
    .locals 11
    .param p1, "body"    # [B
    .param p2, "conn"    # Ljava/net/HttpURLConnection;

    .line 525
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 526
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 527
    .local v1, "bodyReadPartial":I
    const/4 v2, 0x0

    .line 528
    .local v2, "bodyReadTotal":I
    const v3, 0xf000

    .line 529
    .local v3, "bytesTobeRead":I
    const v4, 0x7d000

    :try_start_1
    new-array v4, v4, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    .local v4, "bodyTemp":[B
    const/4 v5, 0x0

    .line 533
    .local v5, "readError":Z
    :cond_0
    :try_start_2
    invoke-virtual {v0, v4, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v6

    .line 538
    nop

    .line 539
    if-lez v1, :cond_1

    .line 540
    add-int/2addr v2, v1

    .line 542
    :cond_1
    if-gez v1, :cond_0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v6

    .line 535
    .local v6, "e":Ljava/io/IOException;
    const/4 v5, 0x1

    .line 536
    :try_start_3
    sget-object v7, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTransferEncodingBody: error reading chunked input stream"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 537
    nop

    .line 544
    .end local v6    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    if-lez v2, :cond_2

    if-nez v5, :cond_2

    .line 546
    new-array v6, v2, [B

    move-object p1, v6

    .line 547
    const/4 v6, 0x0

    invoke-static {v4, v6, p1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    sget-object v6, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTransferEncodingBody: chunked response length ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 550
    :cond_2
    sget-object v6, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v8, "getTransferEncodingBody: chunked body empty or error"

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 552
    .end local v1    # "bodyReadPartial":I
    .end local v2    # "bodyReadTotal":I
    .end local v3    # "bytesTobeRead":I
    .end local v4    # "bodyTemp":[B
    .end local v5    # "readError":Z
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 556
    .end local v0    # "in":Ljava/io/InputStream;
    return-object p1

    .line 525
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapter;
    .end local p1    # "body":[B
    .end local p2    # "conn":Ljava/net/HttpURLConnection;
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 556
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/adapters/HttpAdapter;
    .restart local p1    # "body":[B
    .restart local p2    # "conn":Ljava/net/HttpURLConnection;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 552
    :catch_1
    move-exception v0

    .line 553
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v3, "getTransferEncodingBody: fail to read body"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 556
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return-object p1
.end method

.method public open(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;->open(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected openUrlConnection()Z
    .locals 5

    .line 314
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURL:Ljava/net/URL;

    .line 315
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    nop

    .line 325
    const/4 v0, 0x1

    return v0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v4, "cannot open url connection"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    return v0

    .line 316
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 317
    .local v1, "e":Ljava/net/MalformedURLException;
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string/jumbo v4, "wrong url address"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 319
    return v0
.end method

.method protected removeOldCookies()V
    .locals 5

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    .line 357
    .local v0, "uri":Ljava/net/URI;
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->sCookieStore:Ljava/net/CookieStore;

    invoke-interface {v1, v0}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 358
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/HttpCookie;

    .line 359
    .local v3, "cookie":Ljava/net/HttpCookie;
    sget-object v4, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->sCookieStore:Ljava/net/CookieStore;

    invoke-interface {v4, v0, v3}, Ljava/net/CookieStore;->remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    .line 360
    nop

    .end local v3    # "cookie":Ljava/net/HttpCookie;
    goto :goto_0

    .line 361
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string/jumbo v4, "remove old cookies for HTTP request"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0    # "uri":Ljava/net/URI;
    .end local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    nop

    .line 365
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;->setContext(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 105
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;->setHeaders(Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method protected setHttpUrlConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 414
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 415
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const v2, 0xea60

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 416
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 422
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;->setNetwork(Landroid/net/Network;)V

    .line 122
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;->setParams(Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method protected setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 3
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 350
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string/jumbo v2, "set sslSocketFactory for HTTPS"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 352
    return-void
.end method

.method protected setSocketFactory()V
    .locals 5

    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 340
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 341
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    move-object v0, v2

    .line 342
    sget-object v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v4, "get socketFactory for HTTPS"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    nop

    .line 346
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 347
    return-void

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected setUrlConnection()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setSocketFactory()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->removeOldCookies()V

    .line 334
    :goto_0
    return-void
.end method

.method protected sleep(J)V
    .locals 1
    .param p1, "time"    # J

    .line 619
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 623
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method protected tryToConnectHttpUrlConnection()V
    .locals 3

    .line 400
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 401
    .local v0, "threadId":I
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setHttpUrlConnection()V

    .line 404
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->addReqHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 405
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 408
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 410
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected tryToConnectHttpUrlConnectionWithinTimeOut()V
    .locals 11

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 369
    .local v0, "startTime":J
    const-wide/16 v2, 0x0

    .line 370
    .local v2, "endTime":J
    const-wide/16 v4, 0x7530

    .line 371
    .local v4, "retryTime":J
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    .line 372
    .local v6, "threadId":I
    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 375
    :goto_0
    const-wide/16 v7, 0x7530

    cmp-long v9, v4, v7

    if-gez v9, :cond_1

    .line 376
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURL:Ljava/net/URL;

    .line 377
    iget-object v10, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    invoke-virtual {v10, v9}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v9

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    :goto_1
    iput-object v9, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    .line 378
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setUrlConnection()V

    .line 379
    iget-object v9, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setHttpUrlConnection()V

    .line 382
    iget-object v9, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    iget-object v10, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v9, v10}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->addReqHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 383
    iget-object v9, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    const-wide/16 v4, 0x7530

    goto :goto_2

    .line 387
    :catch_0
    move-exception v9

    .line 388
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 389
    iget-object v10, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 391
    sub-long v4, v2, v0

    goto :goto_3

    .line 385
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 386
    .local v9, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 392
    .end local v9    # "e":Ljava/net/MalformedURLException;
    :goto_2
    nop

    .line 393
    :goto_3
    cmp-long v9, v4, v7

    if-gez v9, :cond_2

    .line 394
    const-wide/16 v9, 0x7d0

    invoke-virtual {p0, v9, v10}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->sleep(J)V

    .line 396
    :cond_2
    cmp-long v7, v4, v7

    if-ltz v7, :cond_3

    .line 397
    return-void

    .line 396
    :cond_3
    goto :goto_0
.end method
