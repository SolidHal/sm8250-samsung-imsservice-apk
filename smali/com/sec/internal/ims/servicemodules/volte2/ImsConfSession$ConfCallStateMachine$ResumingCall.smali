.class Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ResumingCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;
.source "ImsConfSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResumingCall"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 14
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "session"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p4, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p5, "volteModule"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .param p6, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p7, "stackIf"    # Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
    .param p9, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p10, "mediactnr"    # Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .param p11, "looper"    # Landroid/os/Looper;
    .param p12, "csm"    # Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            "Lcom/sec/ims/ImsRegistration;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;",
            "Lcom/sec/internal/constants/Mno;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;",
            "Landroid/os/Looper;",
            "Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;",
            ")V"
        }
    .end annotation

    .line 609
    .local p8, "listener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/volte2/IImsCallSessionEventListener;>;"
    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ResumingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    .line 610
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    .line 611
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ResumingCall] processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/16 v1, 0x35

    if-eq v0, v1, :cond_2

    const/16 v1, 0x36

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 629
    .local v0, "err":Lcom/sec/ims/util/SipError;
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    .line 630
    .local v2, "errorCode":I
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$ResumingCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x320

    if-ne v2, v4, :cond_1

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ResumingCall] conference error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": errorMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "handle as NOT_HANDLED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return v3

    .line 637
    .end local v0    # "err":Lcom/sec/ims/util/SipError;
    .end local v2    # "errorCode":I
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;->processMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 626
    :cond_2
    :pswitch_0
    return v3

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
