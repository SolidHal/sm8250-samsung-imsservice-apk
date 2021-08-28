.class public Lcom/sec/internal/ims/util/UriGeneratorKr;
.super Lcom/sec/internal/ims/util/UriGeneratorImpl;
.source "UriGeneratorKr.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UriGeneratorKr"


# instance fields
.field private mMnoName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredUri"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p3, "countryCode"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p6, "subId"    # I
    .param p7, "phoneId"    # I
    .param p8, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 36
    move-object v8, p0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/UriGeneratorImpl;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .line 31
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/ims/util/UriGeneratorKr;->mMnoName:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDomain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/sec/internal/ims/util/UriGeneratorKr;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGeneratorKr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method


# virtual methods
.method protected convertToTelUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 4
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "cc"    # Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kr convert input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGeneratorKr"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Lcom/sec/internal/helper/PublicAccountUri;->setCountryCode(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_1

    .line 53
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 54
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    invoke-static {p1}, Lcom/sec/internal/helper/PublicAccountUri;->isPublicAccountUri(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
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

    .line 58
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 62
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non Tel-URI convertible uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v0
.end method

.method public extractOwnAreaCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 131
    const-string v0, "UriGeneratorKr"

    const-string v1, "extractOwnAreaCode: KOR operator not use OwnAreaCode"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mOwnAreaCode:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 5
    .param p1, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 74
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkPreferredUri: mDomain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UriGeneratorKr"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorKr;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/util/UriGeneratorKr;->isSipNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    :cond_1
    const-string v1, "getNetworkPreferredUri: KOR SIP URI"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/util/UriGeneratorKr;->isLocalNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";phone-context=geo-local."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 84
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";user=phone"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1, p3}, Lcom/sec/internal/ims/util/UriGeneratorKr;->getSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 86
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkPreferredUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v1, :cond_4

    .line 91
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mVoLTEUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .local v1, "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    goto :goto_0

    .line 92
    .end local v1    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v1, :cond_5

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mRcsUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .restart local v1    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    goto :goto_0

    .line 95
    .end local v1    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .line 97
    .restart local v1    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :goto_0
    invoke-super {p0, p2, p3, v1, p1}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move-object v1, v2

    .line 99
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    :goto_1
    return-object v1
.end method

.method public getNetworkPreferredUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mMnoName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 110
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkPreferredUri: mDomain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UriGeneratorKr"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorKr;->isRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/util/UriGeneratorKr;->isSipNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    :cond_1
    const-string v1, "getNetworkPreferredUri: KOR SIP URI"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/util/UriGeneratorKr;->isLocalNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";phone-context=geo-local."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";user=phone"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/sec/internal/ims/util/UriGeneratorKr;->getSipUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 122
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkPreferredUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNetworkPreferredUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 126
    .restart local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    return-object v1
.end method

.method protected setMnoName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mnoName"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/sec/internal/ims/util/UriGeneratorKr;->mMnoName:Ljava/lang/String;

    .line 137
    return-void
.end method
