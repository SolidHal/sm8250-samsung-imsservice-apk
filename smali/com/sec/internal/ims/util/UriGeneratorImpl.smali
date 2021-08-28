.class public Lcom/sec/internal/ims/util/UriGeneratorImpl;
.super Lcom/sec/internal/ims/util/UriGenerator;
.source "UriGeneratorImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UriGenerator"


# instance fields
.field protected mCountryCode:Ljava/lang/String;

.field protected mDomain:Ljava/lang/String;

.field protected mOwnAreaCode:Ljava/lang/String;

.field protected mPhoneId:I

.field protected mProfile:Lcom/sec/ims/settings/ImsProfile;

.field protected mRat:I

.field protected mRcsUriType:Lcom/sec/ims/util/ImsUri$UriType;

.field protected mSubscriptionId:I

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mUriType:Lcom/sec/ims/util/ImsUri$UriType;

.field protected mVoLTEUriType:Lcom/sec/ims/util/ImsUri$UriType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredUri"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p3, "countryCode"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p6, "subId"    # I
    .param p7, "phoneId"    # I

    .line 68
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/UriGeneratorImpl;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V
    .locals 2
    .param p1, "preferredUri"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p5, "subId"    # I
    .param p6, "phoneId"    # I
    .param p7, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 53
    invoke-direct {p0}, Lcom/sec/internal/ims/util/UriGenerator;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mSubscriptionId:I

    .line 47
    iput v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mPhoneId:I

    .line 48
    iput v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mRat:I

    .line 54
    iput-object p4, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 55
    iput p5, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mSubscriptionId:I

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .line 58
    iput-object p2, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mCountryCode:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    .line 60
    iput p6, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mPhoneId:I

    .line 61
    iput-object p7, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDomain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method protected convertToSipUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "domain"    # Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToSipUri input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    return-object p1

    .line 476
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 478
    const/4 v1, 0x0

    return-object v1

    .line 482
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->isLocalNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";phone-context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";user=phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1
.end method

.method protected convertToTelUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 4
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "cc"    # Ljava/lang/String;

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convert input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGenerator"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {p2}, Lcom/sec/internal/helper/PublicAccountUri;->setCountryCode(Ljava/lang/String;)V

    .line 449
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 450
    return-object v0

    .line 453
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_1

    .line 454
    return-object p1

    .line 455
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 456
    invoke-static {p1}, Lcom/sec/internal/helper/PublicAccountUri;->isPublicAccountUri(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 459
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 463
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non Tel-URI convertible uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-object v0
.end method

.method public extractOwnAreaCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 412
    const-string v0, "UriGenerator"

    const-string v1, "Area code available for US operator only"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method protected getLocalCountryCode()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetowkrPreferredUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p2, "number"    # Ljava/lang/String;

    .line 401
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p1, v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 404
    .end local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 406
    .restart local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkPreferredUri with URI type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UriGenerator"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-object v0
.end method

.method public getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkPreferredUri: [input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " network preferred type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGenerator"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 208
    const-string/jumbo v2, "uri is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-object v0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 212
    return-object p1

    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p1, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 8
    .param p1, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .param p2, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "domain"    # Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkPreferredUri: input URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGenerator"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-nez p2, :cond_0

    .line 230
    const-string/jumbo v0, "uri is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const-string v0, "Do not normalize chatbot service ID"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-object p2

    .line 239
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mVoLTEUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .local v0, "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    goto :goto_0

    .line 241
    .end local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mRcsUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .restart local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    goto :goto_0

    .line 244
    .end local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .line 246
    .restart local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 248
    return-object p2

    .line 250
    :cond_4
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, v0

    move-object v6, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 2
    .param p1, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkPreferredUri: URIServiceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGenerator"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mVoLTEUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .local v0, "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    goto :goto_0

    .line 288
    .end local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mRcsUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .restart local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    goto :goto_0

    .line 291
    .end local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .line 294
    .restart local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :goto_0
    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkPreferredUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 383
    .end local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 385
    .restart local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_1

    .line 386
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->setUserParam(Ljava/lang/String;)V

    .line 390
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkPreferredUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UriGenerator"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-object v0
.end method

.method public getNetworkPreferredUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetowkrPreferredUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .param p1, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 265
    .local p2, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 266
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 268
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-static {v2}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    :cond_0
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    :goto_1
    goto :goto_0

    .line 275
    :cond_1
    return-object v0
.end method

.method public getNetworkPreferredUri(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 255
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 256
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 257
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 260
    :cond_0
    return-object v0
.end method

.method protected getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/ims/util/ImsUri;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p4, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    .line 310
    iget-object v4, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p4, "domain"    # Ljava/lang/String;

    .line 315
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/ims/util/ImsUri;
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    .line 320
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p4

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    .line 322
    .local v0, "domainToUse":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkPreferredUri: mDomain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uriType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UriGenerator"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->isLocalNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "plmn":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p5, v3, :cond_2

    iget v3, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mRat:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 329
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPolicyOnLocalNumbers()Ljava/lang/String;

    move-result-object v3

    const-string v4, "geo-local"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v4, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mSubscriptionId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ";phone-context="

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_3

    .line 334
    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "mcc":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "mnc":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".eps."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 337
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v5    # "mnc":Ljava/lang/String;
    goto :goto_2

    .line 338
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 342
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_4
    :goto_2
    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p3, v1, :cond_5

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_3

    .line 345
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_5
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 348
    .restart local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkPreferredUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-object v1
.end method

.method public getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "ignoreRoaming"    # Z

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mCountryCode:Ljava/lang/String;

    .line 115
    .local v0, "countryCode":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 116
    return-object v1

    .line 120
    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "UriGenerator"

    if-nez v2, :cond_7

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 121
    const-string v2, "N"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getLocalCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1

    .line 130
    :cond_2
    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1

    .line 134
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getLocalCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 139
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mOwnAreaCode:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mSubscriptionId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->extractOwnAreaCode(Ljava/lang/String;)V

    .line 142
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mOwnAreaCode:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mOwnAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local number format, adding own area code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_6
    invoke-static {p1, v0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1

    .line 122
    :cond_7
    :goto_0
    const-string v2, "getNormalizedUri: invalid special character in number"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v1
.end method

.method public getPhoneId()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mPhoneId:I

    return v0
.end method

.method protected getSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 356
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_2

    .line 357
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->setUserParam(Ljava/lang/String;)V

    .line 358
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 359
    const-string/jumbo v1, "urn:gsma:imei:"

    .line 362
    .local v1, "IMEI_URN_PREFIX":Ljava/lang/String;
    const-string/jumbo v2, "urn:"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "gr"

    if-eqz v2, :cond_0

    .line 363
    invoke-virtual {v0, v3, p3}, Lcom/sec/ims/util/ImsUri;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    const-string/jumbo v5, "urn:gsma:imei:"

    if-ne v2, v4, :cond_1

    .line 365
    const/4 v2, 0x0

    const/16 v4, 0x8

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "tac":Ljava/lang/String;
    const/16 v6, 0xe

    invoke-virtual {p3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "snr":Ljava/lang/String;
    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, "spare":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/sec/ims/util/ImsUri;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v2    # "tac":Ljava/lang/String;
    .end local v4    # "snr":Ljava/lang/String;
    .end local v6    # "spare":Ljava/lang/String;
    goto :goto_0

    .line 370
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/sec/ims/util/ImsUri;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .end local v1    # "IMEI_URN_PREFIX":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getUssdRuri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mVoLTEUriType:Lcom/sec/ims/util/ImsUri$UriType;

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    const-string v2, ";phone-context="

    if-ne v0, v1, :cond_0

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 421
    .end local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 423
    .restart local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    if-eqz v0, :cond_1

    .line 424
    const-string v1, "dialstring"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->setUserParam(Ljava/lang/String;)V

    .line 426
    :cond_1
    return-object v0
.end method

.method protected isLocalNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 490
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isRoaming()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getLocalCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isSipNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .line 494
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 495
    const/4 v0, 0x1

    return v0

    .line 497
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "normalize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGenerator"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-nez p1, :cond_0

    .line 81
    const-string v0, "normalize: uri is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "Do not normalize chatbot service ID"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object p1

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user=phone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    invoke-static {p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->isKnownBotServiceId(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "Service Id exists in mBotServiceIdMap, so don\'t normalize it."

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-object p1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->convertToTelUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 98
    .local v0, "normalized":Lcom/sec/ims/util/ImsUri;
    if-nez v0, :cond_3

    .line 99
    return-object p1

    .line 102
    :cond_3
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->setUserParam(Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method public swapUriType(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 2
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "swapUriType: [input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " network preferred type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGenerator"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->convertToTelUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mDomain:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->convertToSipUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public swapUriType(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 193
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 195
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->swapUriType(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 197
    :cond_0
    return-object v0
.end method

.method public updateNetworkPreferredUriType(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri$UriType;)V
    .locals 1
    .param p1, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .param p2, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;

    .line 431
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v0, :cond_0

    .line 432
    iput-object p2, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mVoLTEUriType:Lcom/sec/ims/util/ImsUri$UriType;

    goto :goto_0

    .line 433
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v0, :cond_1

    .line 434
    iput-object p2, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mRcsUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .line 436
    :cond_1
    :goto_0
    return-void
.end method

.method public updateRat(I)V
    .locals 0
    .param p1, "rat"    # I

    .line 440
    iput p1, p0, Lcom/sec/internal/ims/util/UriGeneratorImpl;->mRat:I

    .line 441
    return-void
.end method
