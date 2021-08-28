.class public Lcom/sec/internal/ims/util/VzwUriGenerator;
.super Lcom/sec/internal/ims/util/UriGeneratorUs;
.source "VzwUriGenerator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VzwUriGenerator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredUri"    # Lcom/sec/ims/util/ImsUri$UriType;
    .param p3, "countryCode"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p6, "subId"    # I
    .param p7, "phoneId"    # I
    .param p8, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 33
    invoke-direct/range {p0 .. p8}, Lcom/sec/internal/ims/util/UriGeneratorUs;-><init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDomain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VzwUriGenerator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method


# virtual methods
.method public getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 84
    return-object p1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mUriType:Lcom/sec/ims/util/ImsUri$UriType;

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_3

    .line 88
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    return-object p1

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 94
    const/4 v1, 0x0

    return-object v1

    .line 97
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";user=phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    return-object v1

    .line 99
    .end local v0    # "number":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/util/VzwUriGenerator;->convertToTelUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "ignoreRoaming"    # Z

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    return-object v0

    .line 53
    :cond_0
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "VzwUriGenerator"

    if-nez v1, :cond_4

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 54
    const-string v1, "N"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mOwnAreaCode:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mOwnAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local number format, adding own area code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mCountryCode:Ljava/lang/String;

    const-string v1, "mx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNormalizedUri: Added 1 for Mexico "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/util/VzwUriGenerator;->mCountryCode:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0

    .line 55
    :cond_4
    :goto_0
    const-string v1, "getNormalizedUri: invalid special character in number"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object v0
.end method

.method public normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 43
    invoke-super {p0, p1}, Lcom/sec/internal/ims/util/UriGeneratorUs;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    return-object v0
.end method
