.class public Lcom/sec/internal/ims/util/UriGeneratorUs;
.super Lcom/sec/internal/ims/util/UriGeneratorImpl;
.source "UriGeneratorUs.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UriGeneratorUs"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredUri"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p3, "countryCode"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p6, "subId"    # I
    .param p7, "phoneId"    # I
    .param p8, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 29
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/UriGeneratorImpl;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDomain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    iget-object v2, v1, Lcom/sec/internal/ims/util/UriGeneratorUs;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UriGeneratorUs"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method


# virtual methods
.method public extractOwnAreaCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 36
    if-eqz p1, :cond_3

    .line 38
    :try_start_0
    const-string v0, "+1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x2

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mOwnAreaCode:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 41
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mOwnAreaCode:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mOwnAreaCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_2
    :goto_0
    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mOwnAreaCode:Ljava/lang/String;

    .line 49
    .end local v0    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractOwnAreaCode: mOwnAreaCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mOwnAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGeneratorUs"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz p2, :cond_0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 102
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkPreferredUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UriGeneratorUs"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method public getNetworkPreferredUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz p1, :cond_0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkPreferredUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UriGeneratorUs"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method public getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "ignoreRoaming"    # Z

    .line 55
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 56
    return-object v0

    .line 60
    :cond_0
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "UriGeneratorUs"

    if-nez v2, :cond_6

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 61
    const-string v4, "N"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_0

    .line 66
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorUs;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorUs;->getLocalCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mOwnAreaCode:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mSubscriptionId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/util/UriGeneratorUs;->extractOwnAreaCode(Ljava/lang/String;)V

    .line 74
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mOwnAreaCode:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mOwnAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local number format, adding own area code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mCountryCode:Ljava/lang/String;

    const-string v1, "mx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNormalizedUri: Added 1 for Mexico "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorUs;->mCountryCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 62
    :cond_6
    :goto_0
    const-string v1, "getNormalizedUri: invalid special character in number"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-object v0
.end method
