.class Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;
.super Lcom/sec/internal/helper/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/helper/StateMachine$SmHandler;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;->this$0:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;
    .param p2, "x1"    # Lcom/sec/internal/helper/StateMachine$1;

    .line 737
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;-><init>(Lcom/sec/internal/helper/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 740
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;->this$0:Lcom/sec/internal/helper/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->access$300(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    .line 741
    const/4 v0, 0x1

    return v0
.end method
