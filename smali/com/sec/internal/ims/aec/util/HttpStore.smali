.class public Lcom/sec/internal/ims/aec/util/HttpStore;
.super Ljava/lang/Object;
.source "HttpStore.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEapChallenge:Ljava/lang/String;

.field private mEapChallengeResp:Ljava/lang/String;

.field private mHostName:Ljava/lang/String;

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

.field private mHttpPostData:Lorg/json/JSONObject;

.field private mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

.field private mHttpUrl:Ljava/lang/String;

.field private mHttpUrls:Ljava/util/Queue;

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

.field private final mPhoneId:I

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    .line 22
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mParsedXml:Ljava/util/Map;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mAppId:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallenge:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallengeResp:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHostName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mUserAgent:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrls:Ljava/util/Queue;

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mContext:Landroid/content/Context;

    .line 39
    iput p2, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mPhoneId:I

    .line 40
    return-void
.end method

.method private extractCookie(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    .local p1, "setCookie":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 208
    .local v2, "httpCookie":Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "cookieValues":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 210
    .local v6, "cookieValue":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 212
    const-string v7, "; "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .end local v6    # "cookieValue":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 216
    .end local v2    # "httpCookie":Ljava/lang/String;
    .end local v3    # "cookieValues":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private initHttpHeaders()V
    .locals 4

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    .line 194
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Host"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    const-string v1, "Keep-Alive"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Connection"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    .line 198
    const-string v1, "application/vnd.gsma.eap-relay.v1.0+json"

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.wap.connectivity-xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Accept"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    const-string v1, "max-age=0"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Cache-Control"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 201
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    .line 202
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method


# virtual methods
.method public clearHttpStore()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mAppId:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallenge:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallengeResp:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHostName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrl:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrls:Ljava/util/Queue;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mParsedXml:Ljava/util/Map;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mUserAgent:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getEapChallenge()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getEapChallengeResp()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallengeResp:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHostName:Ljava/lang/String;

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

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

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

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    return-object v0
.end method

.method public getHttpPostData()Lorg/json/JSONObject;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    return-object v0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpUrls()Ljava/util/Queue;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrls:Ljava/util/Queue;

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

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mParsedXml:Ljava/util/Map;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public initHttpGetInfo(ILjava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "entitlementVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->initHttpHeaders()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 162
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    sget-object v1, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_VENDOR:Ljava/lang/String;

    const-string/jumbo v2, "terminal_vendor"

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v2, "terminal_model"

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const-string/jumbo v2, "terminal_sw_version"

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "entitlement_version"

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget v1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "terminal_id"

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vers"

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 163
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "initHttpGetInfo: TelephonyManager or imei not ready"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initHttpPostInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "eapChallengeResp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    .local p2, "setCookie":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/util/HttpStore;->initHttpHeaders()V

    .line 176
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    .line 178
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/aec/util/HttpStore;->extractCookie(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpHeader:Ljava/util/Map;

    const-string v1, "application/vnd.gsma.eap-relay.v1.0+json"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpPostData:Lorg/json/JSONObject;

    const-string v1, "eap-relay-packet"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "initHttpPostInfo: empty eap challenge response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "initHttpPostInfo: empty cookie"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mAppId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setEapChallenge(Ljava/lang/String;)V
    .locals 0
    .param p1, "eapChallenge"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallenge:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setEapChallengeResp(Ljava/lang/String;)V
    .locals 0
    .param p1, "eapChallengeResp"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mEapChallengeResp:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostName"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHostName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setHttpParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    const-string v0, "app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpParam:Ljava/util/Map;

    const-string/jumbo v1, "utf-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_0
    return-void
.end method

.method public setHttpPushParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "notifAction"    # Ljava/lang/String;
    .param p2, "notifToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "notif_action"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "notif_token"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setHttpResponse(Lcom/sec/internal/ims/aec/util/HttpClient$Response;)V
    .locals 0
    .param p1, "response"    # Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpResponse:Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    .line 115
    return-void
.end method

.method public setHttpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpUrl"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrl:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setHttpUrls(Ljava/util/Queue;)V
    .locals 0
    .param p1, "httpUrls"    # Ljava/util/Queue;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mHttpUrls:Ljava/util/Queue;

    .line 79
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

    .line 122
    .local p1, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mParsedXml:Ljava/util/Map;

    .line 123
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 3
    .param p1, "entitlementVersion"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v1, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_VENDOR:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/aec/AECNamespace$Build;->ANDROID_OS_VERSION:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "PRD-TS43/%s %s/%s IMS-Entitlement/6 OS-Android/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpStore;->mUserAgent:Ljava/lang/String;

    .line 155
    return-void
.end method
