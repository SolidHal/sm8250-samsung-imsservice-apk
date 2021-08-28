.class public Lcom/sec/internal/google/ImsConfigImpl;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigImpl.java"


# instance fields
.field private mPhoneId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 19
    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/google/ImsConfigImpl;->mPhoneId:I

    .line 20
    iput p1, p0, Lcom/sec/internal/google/ImsConfigImpl;->mPhoneId:I

    .line 21
    return-void
.end method

.method private getConfigValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "item"    # Ljava/lang/String;

    .line 536
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget v2, p0, Lcom/sec/internal/google/ImsConfigImpl;->mPhoneId:I

    invoke-static {v0, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 537
    .local v0, "value":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 538
    .local v2, "readValue":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 541
    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method private getGlobalSettingsValueToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "defVal"    # Ljava/lang/String;

    .line 545
    iget v0, p0, Lcom/sec/internal/google/ImsConfigImpl;->mPhoneId:I

    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 3
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    const-string v0, ""

    .line 467
    .local v0, "imsService":Ljava/lang/String;
    if-eqz p1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 470
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 474
    :cond_1
    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    .line 476
    :cond_2
    const-string/jumbo v0, "smsip"

    goto :goto_2

    .line 472
    :cond_3
    :goto_0
    const-string v0, "mmtel-video"

    goto :goto_2

    .line 469
    :cond_4
    :goto_1
    const-string v0, "mmtel"

    .line 478
    :cond_5
    :goto_2
    iget v1, p0, Lcom/sec/internal/google/ImsConfigImpl;->mPhoneId:I

    invoke-static {v0, p2, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1

    .line 479
    .local v1, "ret":Z
    if-eqz p3, :cond_6

    .line 480
    const/4 v2, 0x0

    invoke-interface {p3, p1, p2, v1, v2}, Lcom/android/ims/ImsConfigListener;->onGetFeatureResponse(IIII)V

    .line 482
    :cond_6
    return-void
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvisionedValue(I)I
    .locals 1
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    .line 394
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    const-string v0, "94"

    invoke-direct {p0, v0}, Lcom/sec/internal/google/ImsConfigImpl;->getConfigValue(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 117
    :cond_1
    const-string v0, "93"

    invoke-direct {p0, v0}, Lcom/sec/internal/google/ImsConfigImpl;->getConfigValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    return-void
.end method

.method public getVolteProvisioned()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    const-string v0, "93"

    invoke-direct {p0, v0}, Lcom/sec/internal/google/ImsConfigImpl;->getConfigValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    return-void
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public setProvisionedValue(II)I
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 424
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 425
    sget p2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    goto :goto_0

    .line 427
    :cond_1
    sget p2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE_OFF:I

    .line 429
    :goto_0
    iget v0, p0, Lcom/sec/internal/google/ImsConfigImpl;->mPhoneId:I

    invoke-static {v0, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->setRttMode(II)V

    .line 430
    nop

    .line 435
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    return-void
.end method
