.class Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;
.super Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;
.source "CmcCallSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/cmc/CmcCallSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolteEventListener"
.end annotation


# instance fields
.field private mSession:Lcom/sec/ims/volte2/IImsCallSession;

.field final synthetic this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 0
    .param p2, "session"    # Lcom/sec/ims/volte2/IImsCallSession;

    .line 189
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 191
    return-void
.end method


# virtual methods
.method public onCalling()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    const-string v0, "CmcCallSessionManager"

    const-string v1, "onCalling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onCalling()V

    .line 199
    return-void

    .line 196
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfParticipantHeld(IZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 457
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantHeld(IZ)V

    .line 460
    return-void
.end method

.method public onConfParticipantResumed(IZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 465
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantResumed(IZ)V

    .line 468
    return-void
.end method

.method public onConferenceEstablished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConferenceEstablished()V

    .line 427
    return-void
.end method

.method public onEPdgUnavailable(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 488
    return-void
.end method

.method public onEarlyMediaStarted(I)V
    .locals 2
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    const-string v0, "CmcCallSessionManager"

    const-string v1, "onEarlyMediaStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEarlyMediaStarted(I)V

    .line 235
    return-void
.end method

.method public onEnded(I)V
    .locals 6
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnded(), error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 332
    const-string v0, "already ended!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$402(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Z)Z

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainSession: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cmcType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSession: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMainSession callState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$300(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubSessionList size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v2, :cond_1

    .line 345
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v2, :cond_1

    .line 346
    const-string v0, "CMC session ended, switch mainSession to p2p session."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {v0, v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$002(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)Lcom/sec/ims/volte2/IImsCallSession;

    .line 350
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0, v4}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$402(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Z)Z

    goto/16 :goto_0

    .line 352
    :cond_1
    const-string v0, "SUB(WIFI or WIFI-DIRECT) session ended, ignore onEnded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput-object v5, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 354
    return-void

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$300(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 357
    const-string v0, "Ignore onEnded as there are other call sessions waiting"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$202(Lcom/sec/internal/google/cmc/CmcCallSessionManager;I)I

    .line 361
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$300(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear mOrginalSessionId, mSubSessionList size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$500(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSession mdecType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 368
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 369
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 370
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 371
    :cond_4
    const/16 v0, 0x25b

    if-ne p1, v0, :cond_5

    .line 372
    const-string v0, "603 case, releaseP2pNetwork!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$600(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->releaseNetwork()V

    goto :goto_0

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$700(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 375
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$700(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasActiveCall(I)Z

    move-result v0

    .line 376
    .local v0, "activeCall":Z
    if-nez v0, :cond_6

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$600(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 377
    const-string v2, "There are no calls, releaseP2pNetwork!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$600(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->releaseNetwork()V

    .line 384
    .end local v0    # "activeCall":Z
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEnded(I)V

    .line 385
    iput-object v5, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 386
    return-void
.end method

.method public onEpdgStateChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 493
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEpdgStateChanged()V

    .line 496
    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "errorString"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    const-string v2, "CmcCallSessionManager"

    if-eq v0, v1, :cond_0

    .line 400
    const-string v0, "Remove session from sessionlist"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$300(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_1

    .line 406
    const-string v0, "already ended!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onError(ILjava/lang/String;I)V

    .line 410
    return-void
.end method

.method public onEstablished(I)V
    .locals 8
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEstablished(), established on session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 240
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    const/4 v3, 0x5

    if-eq v0, v2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$202(Lcom/sec/internal/google/cmc/CmcCallSessionManager;I)I

    .line 248
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prev main session terminate, orgSession: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$200(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e1":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main terminate failed.."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v0    # "e1":Landroid/os/RemoteException;
    :goto_0
    const-string/jumbo v0, "switch main session to p2p session."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {v0, v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$002(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)Lcom/sec/ims/volte2/IImsCallSession;

    .line 256
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$300(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEstablished(I)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubSessionList size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$300(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 265
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IImsCallSession;

    .line 266
    .local v4, "p2pSession":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 268
    :try_start_1
    invoke-interface {v4, v3}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    goto :goto_2

    .line 269
    :catch_1
    move-exception v5

    .line 270
    .local v5, "e2":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "p2p terminate failed.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    .end local v4    # "p2pSession":Lcom/sec/ims/volte2/IImsCallSession;
    .end local v5    # "e2":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    goto :goto_1

    .line 274
    :cond_2
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure() : reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 280
    const-string v0, "already ended!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 284
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 285
    const-string/jumbo v0, "remove session from mSubSessionList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$300(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubSessionList size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onFailure(I)V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 292
    return-void
.end method

.method public onForwarded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onForwarded()V

    .line 326
    return-void
.end method

.method public onHeld(ZZ)V
    .locals 2
    .param p1, "initiator"    # Z
    .param p2, "localHoldTone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onHeld(ZZ)V

    .line 310
    return-void
.end method

.method public onParticipantAdded(I)V
    .locals 2
    .param p1, "addedSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantAdded(I)V

    .line 444
    return-void
.end method

.method public onParticipantRemoved(I)V
    .locals 2
    .param p1, "removeSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 449
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantRemoved(I)V

    .line 452
    return-void
.end method

.method public onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    .locals 2
    .param p1, "sessId"    # I
    .param p2, "participant"    # [Ljava/lang/String;
    .param p3, "status"    # [I
    .param p4, "sipError"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantUpdated(I[Ljava/lang/String;[I[I)V

    .line 436
    return-void
.end method

.method public onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .locals 2
    .param p1, "src"    # Lcom/sec/ims/volte2/data/MediaProfile;
    .param p2, "dst"    # Lcom/sec/ims/volte2/data/MediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 416
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 419
    return-void
.end method

.method public onResumed(Z)V
    .locals 2
    .param p1, "initiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onResumed(Z)V

    .line 318
    return-void
.end method

.method public onRingingBack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onTrying()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onRingingBack()V

    .line 217
    return-void
.end method

.method public onSessionChanged(I)V
    .locals 1
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionChanged(I)V

    .line 501
    return-void
.end method

.method public onSessionProgress(I)V
    .locals 2
    .param p1, "audioEarlyMediaDir"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onSessionProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionProgress(I)V

    .line 226
    return-void
.end method

.method public onSessionUpdateRequested(I[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .line 390
    return-void
.end method

.method public onStopAlertTone()V
    .locals 0

    .line 394
    return-void
.end method

.method public onSwitched(I)V
    .locals 2
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onSwitched()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSwitched(I)V

    .line 301
    return-void
.end method

.method public onTrying()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onTrying()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onTrying()V

    .line 208
    return-void
.end method

.method public onTtyTextRequest(I[B)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "data"    # [B

    .line 472
    return-void
.end method

.method public onUssdReceived(II[B)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "dcs"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onUssdReceived(II[B)V

    .line 484
    return-void
.end method

.method public onUssdResponse(I)V
    .locals 0
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    return-void
.end method
