.class Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;
.super Landroid/telephony/ims/aidl/IImsRegistration$Stub;
.source "GoogleImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/GoogleImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationImpl"
.end annotation


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/sec/internal/google/GoogleImsService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/google/GoogleImsService;I)V
    .locals 0
    .param p2, "phoneId"    # I

    .line 1280
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;-><init>()V

    .line 1278
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    .line 1281
    iput p2, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    .line 1282
    return-void
.end method


# virtual methods
.method public addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 1314
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {v0}, Lcom/sec/internal/google/GoogleImsService;->access$000(Lcom/sec/internal/google/GoogleImsService;)Lcom/sec/internal/google/ImsNotifier;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/ImsNotifier;->addCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 1315
    return-void
.end method

.method public getRegistrationTechnology()I
    .locals 8

    .line 1287
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1288
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    const/4 v1, -0x1

    .line 1289
    .local v1, "regiTech":I
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1290
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 1291
    .local v4, "regi":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    iget v6, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1292
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 1294
    .local v5, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1295
    goto :goto_1

    .line 1298
    :cond_0
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1299
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v6

    const/16 v7, 0x12

    if-eq v6, v7, :cond_1

    .line 1300
    const/4 v1, 0x0

    goto :goto_1

    .line 1302
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(I)I

    move-result v1

    .line 1290
    .end local v4    # "regi":Lcom/sec/ims/ImsRegistration;
    .end local v5    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1308
    :cond_3
    return v1
.end method

.method public removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 1320
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {v0}, Lcom/sec/internal/google/GoogleImsService;->access$000(Lcom/sec/internal/google/GoogleImsService;)Lcom/sec/internal/google/ImsNotifier;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/ImsNotifier;->removeCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 1321
    return-void
.end method
