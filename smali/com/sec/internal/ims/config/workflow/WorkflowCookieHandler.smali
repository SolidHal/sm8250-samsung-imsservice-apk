.class public Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;
.super Ljava/lang/Object;
.source "WorkflowCookieHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final mCookieManager:Ljava/net/CookieManager;

.field protected mPhoneId:I

.field protected mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;I)V
    .locals 1
    .param p1, "base"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;
    .param p2, "phoneId"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mCookieManager:Ljava/net/CookieManager;

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 39
    iput p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    .line 40
    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected clearCookie()V
    .locals 5

    .line 84
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->getUri()Ljava/net/URI;

    move-result-object v0

    .line 85
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->getCookie(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 86
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

    .line 87
    .local v3, "cookie":Ljava/net/HttpCookie;
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mCookieManager:Ljava/net/CookieManager;

    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Ljava/net/CookieStore;->remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z

    .line 88
    invoke-virtual {v3}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->displayRemovedCookieInfo(Ljava/lang/String;)V

    .line 89
    .end local v3    # "cookie":Ljava/net/HttpCookie;
    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method protected displayCookieInfo(Ljava/net/HttpCookie;)V
    .locals 5
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .line 60
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie domain:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie max age:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method protected displayRemovedCookieInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "cookieName"    # Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removed cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    return-void
.end method

.method protected getCookie(Ljava/net/URI;)Ljava/util/List;
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mCookieManager:Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    .line 55
    .local v0, "cookieStore":Ljava/net/CookieStore;
    invoke-interface {v0, p1}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    return-object v1
.end method

.method protected getUri()Ljava/net/URI;
    .locals 3

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "uri":Ljava/net/URI;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 50
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_0
    return-object v0
.end method

.method protected handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V
    .locals 14
    .param p1, "response"    # Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    .line 97
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 99
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    const-string v4, "handleCookie: cookie exists, adding in header"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    const-string v4, "Cookie"

    const-string v5, ";"

    if-ne v0, v2, :cond_4

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "newCookie":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 104
    .local v1, "cookie":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCookie: cookie = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 108
    .local v7, "cookieValue":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "values":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v9, "sb":Ljava/lang/StringBuilder;
    array-length v10, v8

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_2

    aget-object v12, v8, v11

    .line 112
    .local v12, "obj":Ljava/lang/String;
    const-string v13, "Max-Age"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 113
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-nez v13, :cond_0

    .line 114
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 116
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .end local v12    # "obj":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v7    # "cookieValue":Ljava/lang/String;
    .end local v8    # "values":[Ljava/lang/String;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 122
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCookie: remove Max-Age = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    .line 124
    return-void

    .line 128
    .end local v1    # "cookie":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "newCookie":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v2

    invoke-static {v2, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->shallUsePreviousCookie(ILcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    return-void

    .line 131
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 132
    .local v1, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 134
    .local v7, "headerValue":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "cookies":[Ljava/lang/String;
    array-length v9, v8

    move v10, v3

    :goto_4
    if-ge v10, v9, :cond_7

    aget-object v11, v8, v10

    .line 136
    .local v11, "cookie":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-eqz v12, :cond_6

    .line 138
    const-string v12, "; "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_6
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .end local v11    # "cookie":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 142
    .end local v7    # "headerValue":Ljava/lang/String;
    .end local v8    # "cookies":[Ljava/lang/String;
    :cond_7
    goto :goto_3

    .line 143
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v3, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v5, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    .line 149
    .end local v0    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v1    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    return-void
.end method

.method protected isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z
    .locals 3
    .param p1, "response"    # Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    .line 68
    invoke-virtual {p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    const-string v2, "cookie exist"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->getCookie(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/HttpCookie;

    .line 72
    .local v2, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->displayCookieInfo(Ljava/net/HttpCookie;)V

    .line 73
    .end local v2    # "cookie":Ljava/net/HttpCookie;
    goto :goto_0

    .line 74
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 76
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mPhoneId:I

    const-string v2, "cookie does not exist"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    const v0, 0x13020008

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",NOC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": cookie does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    return v0
.end method
