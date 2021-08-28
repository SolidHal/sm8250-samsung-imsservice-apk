.class public Lcom/sec/internal/ims/util/OpenIdAuth;
.super Ljava/lang/Object;
.source "OpenIdAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/util/OpenIdAuth;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;
    .locals 8
    .param p0, "req"    # Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$000(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 50
    .local v0, "httpRequest":Lcom/sec/internal/helper/HttpRequest;
    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/OpenIdAuth;->setDefaultHeaders(Lcom/sec/internal/helper/HttpRequest;Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)V

    .line 51
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    .line 53
    .local v1, "response":I
    const/16 v2, 0xc8

    const/16 v3, 0x12e

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    const/16 v2, 0x191

    if-eq v1, v2, :cond_0

    .line 93
    sget-object v2, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive HTTP response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " neither 302 nor UNAUTHORIZED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Receive 401 Unauthorized, attempt to generate response"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 79
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->wwwAuthenticate()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "challenge":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "challenge: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$100(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)I

    move-result v4

    .line 83
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$000(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->getCipherSuite()Ljava/lang/String;

    move-result-object v6

    .line 82
    const-string v7, "GET"

    invoke-static {v4, v5, v2, v7, v6}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "authResponse":Ljava/lang/String;
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$000(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 86
    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/OpenIdAuth;->setDefaultHeaders(Lcom/sec/internal/helper/HttpRequest;Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)V

    .line 87
    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 89
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    .line 90
    goto :goto_0

    .line 72
    .end local v2    # "challenge":Ljava/lang/String;
    .end local v4    # "authResponse":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Received 302"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_0

    .line 55
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    const-string v4, "200 OK received"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v2, "Content-Type"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "application/vnd.gsma.eap-relay.v1.0+json"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 58
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "body":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 60
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$100(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)I

    move-result v4

    invoke-static {v4, v2}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getEAPAkaChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "akaResponse":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 62
    invoke-static {p0}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$000(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 63
    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/OpenIdAuth;->setDefaultHeaders(Lcom/sec/internal/helper/HttpRequest;Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)V

    .line 65
    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    .line 66
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    .line 96
    .end local v2    # "body":Ljava/lang/String;
    .end local v4    # "akaResponse":Ljava/lang/String;
    :cond_3
    :goto_0
    if-ne v1, v3, :cond_4

    .line 97
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 99
    :cond_4
    sget-object v2, Lcom/sec/internal/ims/util/OpenIdAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not receive 302 after authentication, received : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v2, 0x0

    return-object v2
.end method

.method private static setDefaultHeaders(Lcom/sec/internal/helper/HttpRequest;Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)V
    .locals 6
    .param p0, "httpRequest"    # Lcom/sec/internal/helper/HttpRequest;
    .param p1, "request"    # Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    .line 109
    invoke-static {p1}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$200(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Landroid/net/Network;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$300(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/16 v3, 0x2710

    const v4, 0x1d4c0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/helper/HttpRequest;->setParams(Landroid/net/Network;ZIILjava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 110
    invoke-static {p1}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$400(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->trustAllCerts()Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->trustAllHosts()Lcom/sec/internal/helper/HttpRequest;

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;->access$100(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "is_eap_supported"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const-string v0, "Accept"

    const-string v1, "application/vnd.gsma.eap-relay.v1.0+json"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 116
    :cond_1
    return-void
.end method
