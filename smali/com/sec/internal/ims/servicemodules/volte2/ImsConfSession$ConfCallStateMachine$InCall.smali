.class Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;
.source "ImsConfSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InCall"
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

    .line 461
    .local p8, "listener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/volte2/IImsCallSessionEventListener;>;"
    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    .line 462
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

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    .line 463
    return-void
.end method


# virtual methods
.method onReferStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    const-string v2, "CallStateMachine"

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[InCall] On_Refer_Status conference setup fail error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    const/16 v1, 0x451

    const-string v2, "Add user to session failure"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x193

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1e8

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x195

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    .line 507
    const-string v0, "[InCall] On_Refer_Status Fail Error"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->access$700(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)V

    goto :goto_0

    .line 509
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1e7

    if-ne v0, v1, :cond_3

    .line 510
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->access$800(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;)Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;->ADD_PARTICIPANT:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfUpdateCmd;

    if-ne v0, v1, :cond_3

    .line 511
    const-string v0, "[InCall] On_Refer_Status ADD USER FAILED : notify error 487"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->access$200(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 515
    :cond_3
    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[InCall] processMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/16 v3, 0x49

    if-eq v0, v3, :cond_3

    const/16 v3, 0x4b

    if-eq v0, v3, :cond_2

    const/16 v3, 0x5b

    const/16 v4, 0x35

    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_4

    const/16 v2, 0x36

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 496
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;->processMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 480
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 481
    .local v0, "modifiedCallType":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->notifyOnModified(I)V

    .line 483
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->access$600(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    .line 485
    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->access$600(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;)I

    move-result v5

    const/4 v6, 0x0

    .line 484
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 486
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->access$602(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;I)I

    .line 488
    :cond_1
    return v2

    .line 493
    .end local v0    # "modifiedCallType":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->onReferStatus(Landroid/os/Message;)V

    .line 494
    return v2

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine$InCall;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession$ConfCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;->access$002(Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;Z)Z

    .line 491
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;->processMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 478
    :cond_4
    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
