.class public Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "OpenApiServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IOpenApiServiceModule;


# static fields
.field private static final EVENT_INCOMING_SIP_MESSAGE:I = 0x64

.field private static final EVENT_SIP_DIALOG_SEND_SIP_RESP:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "OpenApiServiceModule"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogEventListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/IDialogEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImsCallEventListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/volte2/IImsCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImsService:Lcom/sec/ims/IImsService;

.field private mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

.field private mRegiListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationId:I

.field private mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/os/RemoteCallbackListWrapper<",
            "Lcom/sec/ims/openapi/ISipDialogListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVolteService:Lcom/sec/ims/volte2/IVolteService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sipDialogInterface"    # Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    .line 65
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    .line 54
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 58
    new-instance v1, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-direct {v1}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDialogEventListener:Ljava/util/ArrayList;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegiListener:Ljava/util/ArrayList;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsCallEventListener:Ljava/util/ArrayList;

    .line 66
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mContext:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    .line 68
    const/16 v1, 0x64

    invoke-interface {p3, p0, v1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->registerForEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/volte2/IVolteService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;
    .param p1, "x1"    # Lcom/sec/ims/volte2/IVolteService;

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsCallEventListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/IImsService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/IImsService;)Lcom/sec/ims/IImsService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;
    .param p1, "x1"    # Lcom/sec/ims/IImsService;

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDialogEventListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 48
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegiListener:Ljava/util/ArrayList;

    return-object v0
.end method

.method private connectImsService()V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.ImsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)V

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 329
    return-void
.end method

.method private connectVoLteService()V
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    if-eqz v0, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.VolteService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)V

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 285
    return-void
.end method

.method static synthetic lambda$onSipMessageReceived$0(Lcom/sec/internal/helper/AsyncResult;Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 1
    .param p0, "ar"    # Lcom/sec/internal/helper/AsyncResult;
    .param p1, "c"    # Lcom/sec/ims/openapi/ISipDialogListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sec/ims/openapi/ISipDialogListener;->onSipReceived(Ljava/lang/String;)V

    return-void
.end method

.method private onSipMessageReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lcom/sec/internal/helper/AsyncResult;

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/openapi/-$$Lambda$OpenApiServiceModule$u44j8SCBOywwxq2QVsKA--B9YqA;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/servicemodules/openapi/-$$Lambda$OpenApiServiceModule$u44j8SCBOywwxq2QVsKA--B9YqA;-><init>(Lcom/sec/internal/helper/AsyncResult;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->broadcastCallback(Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;)V

    .line 217
    return-void
.end method


# virtual methods
.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 332
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 333
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 334
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 333
    return-object v0

    .line 336
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 2

    .line 73
    const-string v0, "mmtel"

    const-string/jumbo v1, "presence"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 222
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 226
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenApiServiceModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 235
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, "sipMessage":Ljava/lang/String;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/ims/openapi/ISipDialogListener;

    .line 238
    .local v2, "listener":Lcom/sec/ims/openapi/ISipDialogListener;
    :try_start_0
    invoke-interface {v2, v1}, Lcom/sec/ims/openapi/ISipDialogListener;->onSipReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v3

    .line 240
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "sipMessage":Ljava/lang/String;
    .end local v2    # "listener":Lcom/sec/ims/openapi/ISipDialogListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->onSipMessageReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 232
    nop

    .line 244
    :goto_0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 1
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 111
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 113
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 114
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 107
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 89
    if-nez p1, :cond_0

    .line 90
    const-string v0, "OpenApiServiceModule"

    const-string/jumbo v1, "regiInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 95
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 100
    .local v0, "imsProfile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegistrationId:I

    .line 103
    :cond_2
    return-void
.end method

.method public registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/IDialogEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_0

    .line 119
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDefaultPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDialogEventListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_0
    return-void
.end method

.method public registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsCallEventListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRegiListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_0
    return-void
.end method

.method public registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/openapi/ISipDialogListener;

    .line 151
    :try_start_0
    invoke-interface {p1}, Lcom/sec/ims/openapi/ISipDialogListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/openapi/ISipDialogListener;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    monitor-enter v0

    .line 164
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->register(Landroid/os/IInterface;)Z

    .line 165
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->openSipDialog(Z)V

    .line 167
    return-void

    .line 165
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendSip(Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z
    .locals 4
    .param p1, "sipMessage"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/ims/openapi/ISipDialogListener;

    .line 199
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 200
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-nez v0, :cond_0

    .line 201
    const/4 v1, 0x0

    return v1

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    const/16 v3, 0x65

    .line 204
    invoke-virtual {p0, v3, p2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 203
    invoke-interface {v1, v2, p1, v3}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->sendSip(ILjava/lang/String;Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public setFeatureTags([Ljava/lang/String;)V
    .locals 2
    .param p1, "featureTags"    # [Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFeatureTags: featureTags["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenApiServiceModule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setThirdPartyFeatureTags([Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setupMediaPath([Ljava/lang/String;)V
    .locals 5
    .param p1, "remoteIp"    # [Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    .line 209
    .local v0, "pdncontroller":Lcom/sec/internal/interfaces/ims/core/IPdnController;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 210
    .local v3, "address":Ljava/lang/String;
    const/16 v4, 0xb

    invoke-interface {v0, v4, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->requestRouteToHostAddress(ILjava/lang/String;)Z

    .line 209
    .end local v3    # "address":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 81
    const-string v0, "OpenApiServiceModule"

    const-string v1, "connect VoLteService/ImsService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->connectVoLteService()V

    .line 84
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->connectImsService()V

    .line 85
    return-void
.end method

.method public unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/IDialogEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mDefaultPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 128
    return-void
.end method

.method public unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IVolteService;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 196
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mImsService:Lcom/sec/ims/IImsService;

    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 142
    return-void
.end method

.method public unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/ims/openapi/ISipDialogListener;

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->unregister(Landroid/os/IInterface;)Z

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mSipDialogListeners:Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->mRawSipIntf:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->openSipDialog(Z)V

    .line 176
    :cond_0
    return-void

    .line 172
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
