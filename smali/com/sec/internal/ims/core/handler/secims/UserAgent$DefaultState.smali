.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent$1;

    .line 874
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 883
    const/4 v0, 0x1

    .line 884
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "]"

    const-string v6, "UserAgent["

    if-eq v1, v2, :cond_1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 907
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 906
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 886
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 887
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 888
    .local v2, "result":Landroid/os/Message;
    new-instance v5, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v5, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v4, v5

    .line 889
    .local v4, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->startGeneralResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 890
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 891
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->addResult(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 892
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->endGeneralResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 893
    invoke-virtual {v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->getRootAsGeneralResponse(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    move-result-object v3

    .line 894
    .local v3, "resp":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;
    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 895
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 896
    goto :goto_0

    .line 899
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "result":Landroid/os/Message;
    .end local v3    # "resp":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;
    .end local v4    # "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " EVENT_DEREGISTERED_TIMEOUT"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 901
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ZLcom/sec/ims/util/SipError;I)V

    .line 912
    :cond_2
    :goto_0
    return v0
.end method
