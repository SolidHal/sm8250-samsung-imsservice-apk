.class public Lcom/sec/internal/ims/config/SharedInfo;
.super Ljava/lang/Object;
.source "SharedInfo.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAKAParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClientVersion:Ljava/lang/String;

.field private mHttpHeader:Ljava/util/Map;
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

.field private mHttpParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpPort:Ljava/lang/String;

.field private mHttpResponse:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

.field private mHttpUrl:Ljava/lang/String;

.field private mHttpsPort:Ljava/lang/String;

.field private mInternal503ErrRetryCount:I

.field private mInternal511ErrRetryCount:I

.field private mInternalErrRetryCount:I

.field private mIsRcsByUser:Z

.field private mOidcParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOtp:Ljava/lang/String;

.field private mParsedXml:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsProfile:Ljava/lang/String;

.field private mRcsVersion:Ljava/lang/String;

.field private mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mUserImsi:Ljava/lang/String;

.field private mUserMethod:Ljava/lang/String;

.field private mUserMsisdn:Ljava/lang/String;

.field private mXml:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .param p3, "rcsProfile"    # Ljava/lang/String;
    .param p4, "rcsVersion"    # Ljava/lang/String;
    .param p5, "clientVersion"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpUrl:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpResponse:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOtp:Ljava/lang/String;

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMsisdn:Ljava/lang/String;

    .line 41
    const-string v2, "GET"

    iput-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMethod:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mXml:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mParsedXml:Ljava/util/Map;

    .line 45
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserImsi:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsProfile:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsVersion:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientVersion:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternalErrRetryCount:I

    .line 50
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mIsRcsByUser:Z

    .line 51
    iput v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal503ErrRetryCount:I

    .line 52
    iput v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal511ErrRetryCount:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOidcParams:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mAKAParams:Ljava/util/HashMap;

    .line 56
    const-string v0, "80"

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpPort:Ljava/lang/String;

    .line 58
    const-string v0, "443"

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpsPort:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 62
    iput-object p3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsProfile:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsVersion:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientVersion:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rcsProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rcsVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clientVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private getCMCCInitHttpHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 303
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 304
    .local v0, "currentLocale":Ljava/util/Locale;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/config/SharedInfo;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Host"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "User-Agent"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v3, "Keep-Alive"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Connection"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    if-eqz v0, :cond_0

    .line 311
    new-array v2, v2, [Ljava/lang/String;

    .line 312
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 311
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    const-string v2, "max-age=0"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Cache-Control"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-object v1
.end method

.method private getCMCCInitHttpsHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 342
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 343
    .local v0, "currentLocale":Ljava/util/Locale;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/config/SharedInfo;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Host"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "User-Agent"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v3, "Keep-Alive"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Connection"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    if-eqz v0, :cond_0

    .line 350
    new-array v2, v2, [Ljava/lang/String;

    .line 351
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 350
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_0
    return-object v1
.end method

.method private getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 374
    const-string v0, ""

    if-nez p1, :cond_0

    .line 375
    return-object v0

    .line 377
    :cond_0
    const-string v1, "https?://"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "host":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 379
    .local v1, "indexOfSlash":I
    if-lez v1, :cond_1

    .line 380
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 382
    :cond_1
    return-object v0
.end method

.method private getInitHttpHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 285
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 286
    .local v0, "currentLocale":Ljava/util/Locale;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/config/SharedInfo;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Host"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "User-Agent"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v3, "Keep-Alive"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Connection"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    new-array v2, v2, [Ljava/lang/String;

    .line 295
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 295
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 293
    const-string v3, "Accept-Language"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_0
    const-string v2, "max-age=0"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Cache-Control"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-object v1
.end method

.method private getInitHttpParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 320
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method private getInitHttpsHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 324
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 325
    .local v0, "currentLocale":Ljava/util/Locale;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/config/SharedInfo;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Host"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "User-Agent"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v3, "Keep-Alive"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "Connection"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    new-array v2, v2, [Ljava/lang/String;

    .line 334
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 334
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 332
    const-string v3, "Accept-Language"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_0
    const-string v2, "max-age=0"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Cache-Control"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-object v1
.end method

.method private getInitHttpsParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vers"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsVersion:Ljava/lang/String;

    const-string/jumbo v2, "rcs_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsProfile:Ljava/lang/String;

    const-string/jumbo v2, "rcs_profile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "client_vendor"

    const-string v2, "SEC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCSAndr-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    return-object v0
.end method

.method private getInitHttpsParamsSPR()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 5

    .line 388
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalModel()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "model":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalSwVersion()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "version":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getUserAgent: ISimManager is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v2, ""

    return-object v2

    .line 395
    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 396
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOBILE_CZ:Lcom/sec/internal/constants/Mno;

    .line 397
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 401
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 402
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 401
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 402
    :cond_2
    move-object v3, v1

    :goto_0
    move-object v1, v3

    goto :goto_3

    .line 398
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 399
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 398
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 399
    :cond_4
    move-object v3, v1

    :goto_2
    move-object v1, v3

    .line 404
    :goto_3
    iget-object v3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientVersion:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getFormattedUserAgent(Lcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addHttpHeader(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 219
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public addHttpParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public changeConfigProxyUriForHttp()V
    .locals 3

    .line 191
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/cookie/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ConfigProxyUri: change cookie -> conf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cookie"

    const-string v2, "conf"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method public getAKAParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mAKAParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpResponse:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    return-object v0
.end method

.method public getInternal503ErrRetryCount()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal503ErrRetryCount:I

    return v0
.end method

.method public getInternal511ErrRetryCount()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal511ErrRetryCount:I

    return v0
.end method

.method public getInternalErrRetryCount()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternalErrRetryCount:I

    return v0
.end method

.method public getOidcParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOidcParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOtp:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedXml()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mParsedXml:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMethod()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMsisdn()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getXml()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mXml:Ljava/lang/String;

    return-object v0
.end method

.method public isRcsByUser()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mIsRcsByUser:Z

    return v0
.end method

.method public parseAkaParams(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AKA (Digest) Params parsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-eqz p1, :cond_0

    .line 429
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "queryString1":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 431
    .local v2, "queryString":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "params":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 433
    aget-object v5, v3, v4

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    .line 434
    .local v5, "key":Ljava/lang/String;
    aget-object v7, v3, v4

    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    .line 435
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/internal/ims/config/SharedInfo;->mAKAParams:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "queryString1":[Ljava/lang/String;
    .end local v2    # "queryString":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method public parseOidcParams(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOidcParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 415
    if-eqz p1, :cond_0

    .line 416
    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 417
    .local v0, "queryString":Ljava/lang/String;
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "params":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 419
    aget-object v4, v2, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v4, v4, v6

    .line 420
    .local v4, "key":Ljava/lang/String;
    aget-object v6, v2, v3

    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    .line 421
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOidcParams:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "queryString":Ljava/lang/String;
    .end local v2    # "params":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public resetHttpSPR()V
    .locals 4

    .line 120
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "change https -> http"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change enriched header -> http"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://oap7.sprintpcs.com/http://"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 129
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 130
    return-void
.end method

.method public setHttpCMCC()V
    .locals 6

    .line 84
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change https -> http"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https?://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "ipStrs":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 92
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iput-object v3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpPort:Ljava/lang/String;

    .line 93
    aget-object v3, v0, v4

    iput-object v3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpsPort:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 98
    .end local v0    # "ipStrs":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":443"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change port 443 -> 80"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":80"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getCMCCInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 103
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 104
    return-void
.end method

.method public setHttpClean()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 71
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 72
    return-void
.end method

.method public setHttpDefault()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change https -> http"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 80
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public setHttpProxyDefault()V
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change https -> http"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 203
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 204
    return-void
.end method

.method public setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V
    .locals 0
    .param p1, "response"    # Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    .line 235
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpResponse:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    .line 236
    return-void
.end method

.method public setHttpSPR()V
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "change https -> http"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change http -> enriched header"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://oap7.sprintpcs.com/http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 116
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 117
    return-void
.end method

.method public setHttpsCMCC()V
    .locals 6

    .line 157
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https?://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "ipStrs":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-le v3, v5, :cond_0

    .line 160
    aget-object v3, v0, v4

    iput-object v3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpPort:Ljava/lang/String;

    .line 161
    aget-object v3, v0, v5

    iput-object v3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpsPort:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    array-length v2, v0

    if-ne v2, v5, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpsPort:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 168
    .end local v0    # "ipStrs":[Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change http -> https"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 173
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getCMCCInitHttpsHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 174
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 175
    return-void
.end method

.method public setHttpsDefault()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change http -> https"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 138
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 139
    return-void
.end method

.method public setHttpsSPR()V
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "change http -> https"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://oap7.sprintpcs.com/https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "change enriched header -> https"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 187
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsParamsSPR()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 188
    return-void
.end method

.method public setHttpsWithPreviousCookies()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 150
    .local v0, "lastCookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setInternal503ErrRetryCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 469
    iput p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal503ErrRetryCount:I

    .line 470
    return-void
.end method

.method public setInternal511ErrRetryCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 477
    iput p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal511ErrRetryCount:I

    .line 478
    return-void
.end method

.method public setInternalErrRetryCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 453
    iput p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternalErrRetryCount:I

    .line 454
    return-void
.end method

.method public setOtp(Ljava/lang/String;)V
    .locals 0
    .param p1, "otp"    # Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOtp:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setParsedXml(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mParsedXml:Ljava/util/Map;

    .line 252
    return-void
.end method

.method public setRcsByUser(Z)V
    .locals 0
    .param p1, "isRcsByUser"    # Z

    .line 461
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mIsRcsByUser:Z

    .line 462
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpUrl:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setUserImsi(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimsi"    # Ljava/lang/String;

    .line 279
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserImsi:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserImsi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public setUserMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 275
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMethod:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setUserMsisdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMsisdn:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setXml(Ljava/lang/String;)V
    .locals 0
    .param p1, "xml"    # Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mXml:Ljava/lang/String;

    .line 244
    return-void
.end method
