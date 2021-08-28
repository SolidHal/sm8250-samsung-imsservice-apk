.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "SoftphoneClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 246
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 5
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # Lcom/sec/ims/ImsRegistrationError;

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered(): imsprofile id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mProfileId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v2, v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    if-eq v0, v1, :cond_0

    .line 271
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->access$000(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 274
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 275
    .local v0, "msisdn":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x3f9

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(IIILjava/lang/Object;)V

    .line 276
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-boolean v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iput v4, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    .line 279
    :cond_2
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered(): imsprofile id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mProfileId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v2, v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    if-eq v0, v1, :cond_0

    .line 251
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->access$000(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 259
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 260
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    const-string v1, ""

    .line 261
    .local v1, "msisdn":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x3f8

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(ILjava/lang/Object;)V

    .line 265
    return-void
.end method
