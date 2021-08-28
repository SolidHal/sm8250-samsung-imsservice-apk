.class public Lcom/sec/internal/ims/util/UriGeneratorRjil;
.super Lcom/sec/internal/ims/util/UriGeneratorImpl;
.source "UriGeneratorRjil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UriGeneratorRjil"


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

    .line 32
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/UriGeneratorImpl;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected convertToTelUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 4
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "cc"    # Ljava/lang/String;

    .line 90
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

    const-string v1, "UriGeneratorRjil"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "msisdn":Ljava/lang/String;
    move-object v1, v0

    .line 95
    .local v1, "phoneNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "phone-context"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const/4 v2, 0x0

    const-string v3, ";phone-context"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorRjil;->mCountryCode:Ljava/lang/String;

    const-string v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 99
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    const-string v2, "91"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";phone-context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorRjil;->mDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    return-object v2

    .line 105
    .end local v0    # "msisdn":Ljava/lang/String;
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->convertToTelUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p2, "number"    # Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p1, v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorRjil;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 59
    .end local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 61
    .restart local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkPreferredUri with URI type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UriGeneratorRjil"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0
.end method

.method public getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 2
    .param p1, "serviceType"    # Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkPreferredUri: URIServiceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGeneratorRjil"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v0, :cond_0

    .line 41
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    .local v0, "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    goto :goto_0

    .line 42
    .end local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne p1, v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorRjil;->mRcsUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .restart local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    goto :goto_0

    .line 45
    .end local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorRjil;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .line 47
    .restart local v0    # "uriType":Lcom/sec/ims/util/ImsUri$UriType;
    :goto_0
    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-eq v0, v1, :cond_2

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorRjil;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    .line 50
    :cond_2
    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/sec/internal/ims/util/UriGeneratorRjil;->getNetworkPreferredUriInternal(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1
.end method

.method public getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "ignoreRoaming"    # Z

    .line 67
    move-object v0, p1

    .line 68
    .local v0, "phoneNumber":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 69
    const/4 v1, 0x0

    return-object v1

    .line 72
    :cond_0
    const-string v1, ";phone-context"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const/4 v2, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorRjil;->mCountryCode:Ljava/lang/String;

    const-string v2, "in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 76
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    const-string v1, "91"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";phone-context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorRjil;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1

    .line 81
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/util/UriGeneratorImpl;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1
.end method
