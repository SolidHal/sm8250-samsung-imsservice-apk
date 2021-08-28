.class Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;
.super Lcom/sec/internal/helper/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuittingState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 748
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/helper/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/helper/StateMachine$1;

    .line 748
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 751
    const/4 v0, 0x0

    return v0
.end method
