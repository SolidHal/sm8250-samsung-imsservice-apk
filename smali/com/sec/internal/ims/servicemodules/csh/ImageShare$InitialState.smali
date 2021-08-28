.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;

    .line 139
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 143
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 147
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x1

    .line 149
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 212
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v3, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v7, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notityIncommingSession(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;J)V

    .line 203
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$500(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 204
    goto/16 :goto_3

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 207
    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 208
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$600(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 209
    goto/16 :goto_3

    .line 187
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 188
    .local v1, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    .line 189
    .local v2, "sessionResult":Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v4, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mSessionNumber:I

    iput v4, v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    .line 190
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    if-ltz v3, :cond_4

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 195
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$400(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 197
    goto/16 :goto_3

    .line 191
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 192
    invoke-virtual {v4}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 193
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_3

    .line 152
    .end local v1    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v2    # "sessionResult":Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;
    :cond_5
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 155
    .local v4, "fileSize":J
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_8

    .line 159
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iput-wide v4, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 160
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getMaxSize()J

    move-result-wide v8

    .line 162
    .local v8, "maxSize":J
    cmp-long v2, v8, v6

    if-eqz v2, :cond_7

    cmp-long v2, v4, v8

    if-gez v2, :cond_6

    goto :goto_1

    .line 170
    :cond_6
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File size("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") is larger than Max size("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v6, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyLimitExceeded(JLcom/sec/ims/util/ImsUri;)V

    .line 174
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 175
    invoke-virtual {v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_2

    .line 163
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 164
    .local v2, "cb":Landroid/os/Message;
    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 165
    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v11, v11, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    const-string/jumbo v13, "placeholder"

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v3, v6, v7, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;Landroid/os/Message;)V

    .line 168
    .local v3, "params":Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$200(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->startIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;)V

    .line 169
    .end local v2    # "cb":Landroid/os/Message;
    .end local v3    # "params":Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;
    nop

    .line 183
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "fileSize":J
    .end local v8    # "maxSize":J
    :goto_2
    goto :goto_3

    .line 156
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "fileSize":J
    :cond_8
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    const-string v3, "filePath must point to a valid file! or fileSize never be to the 0!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local v0    # "retVal":Z
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;
    .end local p1    # "msg":Landroid/os/Message;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "fileSize":J
    .restart local v0    # "retVal":Z
    .restart local p0    # "this":Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;
    .restart local p1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyInvalidDataPath(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v3, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 181
    invoke-virtual {v3}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 182
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 184
    .end local v1    # "e":Ljava/io/IOException;
    nop

    .line 215
    :goto_3
    return v0
.end method
