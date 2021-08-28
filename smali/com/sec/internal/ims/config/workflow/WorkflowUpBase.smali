.class public abstract Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowUpBase.java"


# static fields
.field protected static final AUTH_HIDDENTRY_MAX_COUNT:I = 0x3

.field protected static final AUTH_TRY_MAX_COUNT:I = 0x1

.field protected static final INTERNALERR_RETRY_MAX_COUNT:I = 0x5

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAlternateVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "moduleHandler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "telephonyAdapter"    # Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;
    .param p6, "storageAdapter"    # Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .param p7, "httpAdapter"    # Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;
    .param p8, "xmlParserAdapter"    # Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;
    .param p9, "dialogAdapter"    # Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;
    .param p10, "phoneId"    # I

    .line 55
    invoke-direct/range {p0 .. p10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    .line 56
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    const-string v1, "alt_provisioning_versions"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mAlternateVersions:[Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public changeOpMode(Z)V
    .locals 4
    .param p1, "isRcsEnabled"    # Z

    .line 400
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeOpMode: isRcsEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 402
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto :goto_0

    .line 404
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 406
    :goto_0
    return-void
.end method

.method protected checkAndUpdateData(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "oldToken":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "newToken":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateData: oldToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkAndUpdateData: token is changed, update it"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setToken(Ljava/lang/String;)V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion()I

    move-result v2

    const-string v3, ""

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getValidity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 212
    .local v2, "oldValidity":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion(Ljava/util/Map;)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getValidity(Ljava/util/Map;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "newValidity":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndUpdateData: oldValidity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " newValidity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v5, "checkAndUpdateData: validity is changed, update it"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setValidity(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_1

    .line 220
    :catch_0
    move-exception v4

    .line 221
    .local v4, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndUpdateData: cannot update validity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_1
    return-void
.end method

.method protected checkMobileConnection(Landroid/net/ConnectivityManager;)Z
    .locals 7
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .line 466
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 467
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 468
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0xc

    .line 469
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 470
    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 471
    .local v6, "ni":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_1

    .line 472
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMobileConnection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 466
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    .end local v6    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
    :cond_2
    return v2
.end method

.method protected checkWifiConnection(Landroid/net/ConnectivityManager;)Z
    .locals 8
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .line 451
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 452
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 453
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0xc

    .line 454
    invoke-virtual {v5, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 455
    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 456
    .local v7, "ni":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_1

    .line 457
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWifiConnection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v6

    :cond_0
    return v2

    .line 451
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    .end local v7    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    :cond_2
    return v2
.end method

.method protected convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 2
    .param p1, "rcsDisabledState"    # Ljava/lang/String;

    .line 511
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 512
    .local v0, "mode":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    goto :goto_0

    .line 514
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    goto :goto_0

    .line 516
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    goto :goto_0

    .line 518
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 519
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 521
    :cond_3
    :goto_0
    return-object v0
.end method

.method protected convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I
    .locals 2
    .param p1, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 525
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    .line 526
    .local v0, "value":I
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v1, :cond_0

    .line 527
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    goto :goto_0

    .line 528
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v1, :cond_1

    .line 529
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    goto :goto_0

    .line 530
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v1, :cond_2

    .line 531
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    goto :goto_0

    .line 532
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v1, :cond_3

    .line 533
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    .line 535
    :cond_3
    :goto_0
    return v0
.end method

.method protected convertRcsStateWithSpecificParam()Ljava/lang/String;
    .locals 2

    .line 549
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsStateWithSpecificParam(Ljava/lang/String;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected convertRcsStateWithSpecificParam(Ljava/lang/String;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Ljava/lang/String;
    .locals 2
    .param p1, "rcsState"    # Ljava/lang/String;
    .param p2, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 553
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    return-object p1

    .line 556
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion()I

    move-result v0

    .line 560
    .local v0, "version":I
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isActiveVersion(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public forceAutoConfig(Z)V
    .locals 4
    .param p1, "mobile"    # Z

    .line 72
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->sIsConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "forceAutoConfig ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceAutoConfig mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mMobileNetwork:Z

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->sendEmptyMessage(I)Z

    .line 79
    :goto_0
    return-void
.end method

.method public forceAutoConfigNeedResetConfig(Z)V
    .locals 5
    .param p1, "mobile"    # Z

    .line 83
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->sIsConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "forceAutoConfigNeedResetConfig ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceAutoConfigNeedResetConfig mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mMobileNetwork:Z

    .line 88
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    .line 89
    .local v0, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isTriggeredByNrcr()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_1

    .line 92
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 93
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsVersion(I)V

    goto :goto_0

    .line 95
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 97
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->sendEmptyMessage(I)Z

    .line 99
    .end local v0    # "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    :goto_1
    return-void
.end method

.method protected getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 3

    .line 481
    const-string/jumbo v0, "storage_data"

    const-string/jumbo v1, "root/application/1/services/rcsdisabledstate"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    return-object v0
.end method

.method protected getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 5
    .param p1, "configType"    # Ljava/lang/String;
    .param p2, "configPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;"
        }
    .end annotation

    .line 493
    .local p3, "configData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->NONE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 494
    .local v0, "mode":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    const-string v1, ""

    .line 495
    .local v1, "rcsDisabledState":Ljava/lang/String;
    const-string/jumbo v2, "storage_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 497
    :cond_0
    const-string/jumbo v2, "parsedxml_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    if-eqz p3, :cond_1

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    move-object v1, v2

    .line 501
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getRcsDisabledState: empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-object v0

    .line 505
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 506
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRcsDisabledState: mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-object v0
.end method

.method protected getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;"
        }
    .end annotation

    .line 489
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "parsedxml_data"

    const-string/jumbo v1, "root/application/1/services/rcsdisabledstate"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    return-object v0
.end method

.method protected getRcsState()Ljava/lang/String;
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/application/1/services/rcsstate"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 9
    .param p1, "init"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p2, "fetchHttps"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .param p3, "finish"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/InvalidHeaderException;,
            Lcom/sec/internal/ims/config/exception/UnknownStatusException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setLastErrorCode(I)V

    .line 109
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResponseForUp: mLastErrorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getLastErrorCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getLastErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->addEventLog(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "supportedVersions":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mAlternateVersions:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v2

    .line 115
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v5, "Supported-Versions"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    move-object v1, v5

    .line 116
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setAcsSeverSupportedVersions(Ljava/lang/String;)V

    .line 120
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getLastErrorCode()I

    move-result v2

    if-eqz v2, :cond_e

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_d

    const/16 v5, 0x193

    if-eq v2, v5, :cond_c

    const/16 v4, 0x196

    if-eq v2, v4, :cond_7

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_5

    const/16 v3, 0x1f7

    if-eq v2, v3, :cond_4

    const/16 v3, 0x1ff

    if-eq v2, v3, :cond_3

    const/16 v3, 0x320

    if-ne v2, v3, :cond_2

    .line 190
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "SSL handshake is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object v0, p3

    .line 192
    goto/16 :goto_3

    .line 195
    :cond_2
    new-instance v2, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string/jumbo v3, "unknown http status code"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "The token is no longer valid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setToken(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->removeValidToken()V

    .line 155
    move-object v0, p1

    .line 156
    goto/16 :goto_3

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getretryAfterTime()J

    move-result-wide v2

    .line 147
    .local v2, "retryAfterTime":J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->sleep(J)V

    .line 148
    move-object v0, p2

    .line 149
    goto/16 :goto_3

    .line 133
    .end local v2    # "retryAfterTime":J
    :cond_5
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "internal server error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getInternalErrRetryCount()I

    move-result v2

    .line 135
    .local v2, "retryCount":I
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retryCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v3, 0x5

    if-gt v2, v3, :cond_6

    .line 138
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/SharedInfo;->setInternalErrRetryCount(I)V

    .line 139
    move-object v0, p1

    goto :goto_3

    .line 141
    :cond_6
    move-object v0, p3

    .line 143
    goto :goto_3

    .line 159
    .end local v2    # "retryCount":I
    :cond_7
    const/4 v2, 0x0

    .line 160
    .local v2, "commonVersion":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mAlternateVersions:[Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 161
    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    const-string/jumbo v5, "rcs_provisioning_version"

    const-string v6, "2.0"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "provVersion":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 165
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 166
    move-object v2, v4

    goto :goto_2

    .line 168
    :cond_8
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mAlternateVersions:[Ljava/lang/String;

    array-length v6, v5

    :goto_1
    if-ge v3, v6, :cond_a

    aget-object v7, v5, v3

    .line 169
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 170
    move-object v2, v7

    .line 171
    goto :goto_2

    .line 168
    .end local v7    # "str":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 177
    .end local v4    # "provVersion":Ljava/lang/String;
    :cond_a
    :goto_2
    if-eqz v2, :cond_b

    .line 178
    iput-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mRcsProvisioningVersion:Ljava/lang/String;

    .line 179
    move-object v0, p2

    goto :goto_3

    .line 181
    :cond_b
    move-object v0, p3

    .line 183
    goto :goto_3

    .line 127
    .end local v2    # "commonVersion":Ljava/lang/String;
    :cond_c
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "set version to zero"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 129
    move-object v0, p3

    .line 130
    goto :goto_3

    .line 122
    :cond_d
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "normal case"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object v0, p2

    .line 124
    goto :goto_3

    .line 185
    :cond_e
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "RCS configuration server is unreachable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object v0, p3

    .line 187
    nop

    .line 197
    :goto_3
    return-object v0
.end method

.method protected isActiveVersion(I)Z
    .locals 1
    .param p1, "version"    # I

    .line 564
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isDataFullUpdateNeeded(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 282
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion(Ljava/util/Map;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mStartForce:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z
    .locals 1
    .param p1, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 543
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    .line 411
    return-void
.end method

.method protected registerMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p3, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 432
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "register mobile network"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p1, p2, p3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 434
    invoke-virtual {p1, p2, p3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/ConnectivityManager$TooManyRequestsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 438
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->sendMsisdnNumber(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",VC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13020002

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->sendVerificationCode(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method protected setAcsSeverSupportedVersions(Ljava/lang/String;)V
    .locals 2
    .param p1, "vesions"    # Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v1, "info/server_supported_vesions"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 486
    return-void
.end method

.method protected setActiveOpMode(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 286
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isDataFullUpdateNeeded(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->writeDataToStorage(Ljava/util/Map;)V

    .line 289
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion(Ljava/util/Map;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersionBackup(I)V

    .line 290
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getToken(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "imsi":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "save valid token"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "validrcsconfig"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 297
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "the same or lower version, remain previous data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->checkAndUpdateData(Ljava/util/Map;)V

    .line 300
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getValidity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setNextAutoconfigTimeFromValidity(I)V

    .line 301
    return-void
.end method

.method protected setActiveOpModeWithEmptyData()V
    .locals 3

    .line 308
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getParsedIntVersionBackup()I

    move-result v0

    .line 309
    .local v0, "backupVersion":I
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 310
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "retreive backup version of configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersion(I)V

    goto :goto_0

    .line 313
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "data is empty, remain previous data and mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void
.end method

.method protected setDisableOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 1
    .param p1, "mode"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->clearStorage()V

    .line 323
    if-eqz p2, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersion(I)V

    .line 327
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setValidity(I)V

    .line 328
    return-void
.end method

.method protected setDisableRcsByUserOpMode()V
    .locals 3

    .line 370
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersionBackup(I)V

    .line 373
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rcsState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->cancelValidityTimer()V

    .line 376
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setNextAutoconfigTime(J)V

    .line 377
    return-void
.end method

.method protected setDisabledStateOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 2
    .param p1, "mode"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersionBackup(I)V

    .line 355
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_2

    .line 356
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersion(I)V

    goto :goto_0

    .line 357
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_3

    .line 358
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersion(I)V

    goto :goto_0

    .line 359
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_4

    .line 360
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersion(I)V

    goto :goto_0

    .line 362
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersion(I)V

    .line 364
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->cancelValidityTimer()V

    .line 366
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setNextAutoconfigTime(J)V

    .line 367
    return-void
.end method

.method protected setDormantOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 331
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion()I

    move-result v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getParsedIntVersionBackup()I

    move-result v0

    .line 340
    .local v0, "backupVersion":I
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersionBackup(I)V

    .line 344
    .end local v0    # "backupVersion":I
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersion(I)V

    .line 345
    return-void
.end method

.method protected setEnableRcsByUserOpMode()V
    .locals 4

    .line 380
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getParsedIntVersionBackup()I

    move-result v0

    .line 381
    .local v0, "backupVersion":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v2, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 384
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersion(I)V

    .line 385
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->clearStorage()V

    .line 388
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setVersion(I)V

    .line 389
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    .line 391
    :goto_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsDisabledState(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->cancelValidityTimer()V

    .line 393
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setNextAutoconfigTime(J)V

    .line 394
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v1

    .line 395
    .local v1, "cm":Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->disableRcsByAcs(Z)V

    .line 396
    return-void
.end method

.method protected setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 4
    .param p1, "mode"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOpMode: mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setEnableRcsByUserOpMode()V

    .line 273
    goto :goto_0

    .line 268
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDisableRcsByUserOpMode()V

    .line 269
    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDisabledStateOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 265
    goto :goto_0

    .line 254
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDormantOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 255
    goto :goto_0

    .line 250
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDisableOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 251
    goto :goto_0

    .line 238
    :pswitch_5
    if-nez p2, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setActiveOpModeWithEmptyData()V

    .line 240
    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setActiveOpMode(Ljava/util/Map;)V

    .line 243
    nop

    .line 279
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setRcsDisabledState(Ljava/lang/String;)V
    .locals 2
    .param p1, "rcsDisabledState"    # Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/application/1/services/rcsdisabledstate"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 540
    return-void
.end method

.method protected setRcsState(Ljava/lang/String;)V
    .locals 2
    .param p1, "rcsState"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/application/1/services/rcsstate"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 573
    return-void
.end method

.method public startAutoConfig(Z)V
    .locals 4
    .param p1, "mobile"    # Z

    .line 61
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->sIsConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAutoConfig ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAutoConfig mobile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mMobileNetwork:Z

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->sendEmptyMessage(I)Z

    .line 68
    :goto_0
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    .line 416
    return-void
.end method

.method protected unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 443
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregister mobile network"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 448
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method work()V
    .locals 0

    .line 103
    return-void
.end method
