.class Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;
.super Lcom/sec/internal/helper/State;
.source "ChannelScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPollingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
    .param p2, "x1"    # Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;

    .line 743
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v1, "LongPollingState, enter"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->log(Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public exit()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v1, "LongPollingState, exit"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->log(Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 751
    const/4 v0, 0x1

    .line 752
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v1

    .line 753
    .local v1, "event":Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_0

    .line 761
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mSubscribedState:Lcom/sec/internal/helper/State;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 757
    goto :goto_0

    .line 759
    :cond_1
    nop

    .line 764
    :goto_0
    if-eqz v0, :cond_2

    .line 765
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$LongPollingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LongPollingState, Handled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->log(Ljava/lang/String;)V

    .line 767
    :cond_2
    return v0
.end method
