.class Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;
.super Landroid/os/Handler;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 190
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 193
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onReferStatus(Lcom/sec/internal/helper/AsyncResult;)V

    .line 209
    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 213
    .local v0, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    .line 214
    .local v1, "rrcEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->access$000(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rrcEvent.getEvent() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_6

    .line 216
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-eq v2, v3, :cond_3

    .line 217
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-ne v2, v3, :cond_6

    .line 218
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 204
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "rrcEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mImsCallSessionEventHandler:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->onImsMediaEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 205
    goto :goto_0

    .line 199
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 200
    .restart local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onImsCallEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    .line 201
    nop

    .line 227
    .end local v0    # "result":Lcom/sec/internal/helper/AsyncResult;
    :cond_6
    :goto_0
    return-void
.end method
