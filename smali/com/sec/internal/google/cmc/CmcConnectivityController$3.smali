.class Lcom/sec/internal/google/cmc/CmcConnectivityController$3;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "CmcConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/cmc/CmcConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 264
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 5
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errInfo"    # Lcom/sec/ims/ImsRegistrationError;

    .line 332
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 333
    .local v0, "cmcType":I
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered(), cmcType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", SipErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiDirectIsConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1700(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWifiIsConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1800(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x2

    const-string v2, "SamsungCMC_WIFI_SD"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    const/4 v4, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$2002(Lcom/sec/internal/google/cmc/CmcConnectivityController;I)I

    .line 364
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$2102(Lcom/sec/internal/google/cmc/CmcConnectivityController;I)I

    .line 365
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1102(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z

    .line 367
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wifi-direct disconnect, releaseP2pNetwork!"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$200(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->releaseNetwork()V

    .line 371
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1900(Lcom/sec/internal/google/cmc/CmcConnectivityController;Ljava/lang/String;)V

    .line 372
    goto :goto_0

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$2002(Lcom/sec/internal/google/cmc/CmcConnectivityController;I)I

    .line 357
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$2102(Lcom/sec/internal/google/cmc/CmcConnectivityController;I)I

    .line 358
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1102(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z

    .line 359
    goto :goto_0

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$602(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z

    .line 352
    goto :goto_0

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$602(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z

    .line 345
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    const-string v2, "SamsungCMC_WIFI_PD"

    invoke-static {v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1900(Lcom/sec/internal/google/cmc/CmcConnectivityController;Ljava/lang/String;)V

    .line 346
    goto :goto_0

    .line 338
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1900(Lcom/sec/internal/google/cmc/CmcConnectivityController;Ljava/lang/String;)V

    .line 339
    nop

    .line 376
    :goto_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 267
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 268
    .local v0, "cmcType":I
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistered, cmcType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    const-string v3, "local_network"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v4, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1002(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z

    .line 306
    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1100(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 307
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1200(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/google/cmc/IpServiceManager;

    move-result-object v1

    const-string v2, "192.168.49.1"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/google/cmc/IpServiceManager;->ipRuleAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1302(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z

    .line 315
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1400(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "prevHotspotHostPcscfIp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1200(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/google/cmc/IpServiceManager;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/google/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1200(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/google/cmc/IpServiceManager;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1500(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/google/cmc/IpServiceManager;->ipRuleAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1500(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1600(Lcom/sec/internal/google/cmc/CmcConnectivityController;Ljava/lang/String;)V

    .line 322
    goto/16 :goto_0

    .line 286
    .end local v1    # "prevHotspotHostPcscfIp":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$602(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z

    .line 289
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$900(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$800(Lcom/sec/internal/google/cmc/CmcConnectivityController;)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isCmcRegistered(I)I

    move-result v1

    if-lez v1, :cond_4

    .line 290
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "There is already cmc registration. deregister"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$900(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$700(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$800(Lcom/sec/internal/google/cmc/CmcConnectivityController;)I

    move-result v4

    invoke-interface {v1, v3, v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    .line 295
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$1000(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z

    move-result v1

    goto :goto_0

    .line 281
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$602(Lcom/sec/internal/google/cmc/CmcConnectivityController;Z)Z

    .line 282
    goto :goto_0

    .line 273
    :cond_6
    invoke-static {}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmc is registered, mWifiRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$600(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$600(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$700(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 275
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$900(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$700(Lcom/sec/internal/google/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcConnectivityController$3;->this$0:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->access$800(Lcom/sec/internal/google/cmc/CmcConnectivityController;)I

    move-result v4

    invoke-interface {v1, v3, v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    .line 328
    :cond_7
    :goto_0
    return-void
.end method
