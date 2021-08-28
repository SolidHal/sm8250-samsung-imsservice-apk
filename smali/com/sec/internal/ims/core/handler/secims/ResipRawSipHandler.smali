.class public Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;
.super Lcom/sec/internal/ims/core/handler/RawSipHandler;
.source "ResipRawSipHandler.java"


# static fields
.field private static final EVENT_SIP_DIALOG_MESSAGE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mRawSipRegistrantList:Lcom/sec/internal/helper/RegistrantList;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 28
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/RawSipHandler;-><init>(Landroid/os/Looper;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 23
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    .line 29
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 30
    return-void
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "regId"    # I

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 71
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 76
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 80
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 81
    nop

    .line 86
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 34
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/RawSipHandler;->init()V

    .line 35
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 36
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerRawSipEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 37
    return-void
.end method

.method public openSipDialog(Z)V
    .locals 1
    .param p1, "isRequired"    # Z

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->openSipDialog(Z)V

    .line 67
    return-void
.end method

.method public registerForEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForSipDialogEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 43
    return-void
.end method

.method public sendSip(ILjava/lang/String;Landroid/os/Message;)Z
    .locals 3
    .param p1, "regId"    # I
    .param p2, "sipMessage"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 53
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 55
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 56
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendSip: UserAgent not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    return v1

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendSip(ILjava/lang/String;Landroid/os/Message;)V

    .line 61
    const/4 v1, 0x1

    return v1
.end method

.method public unregisterForEvent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 47
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForSipDialogEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 49
    return-void
.end method
