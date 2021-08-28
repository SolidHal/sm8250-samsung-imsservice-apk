.class public Lcom/sec/internal/helper/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRec"
.end annotation


# instance fields
.field private mDstState:Lcom/sec/internal/helper/IState;

.field private mInfo:Ljava/lang/String;

.field private mOrgState:Lcom/sec/internal/helper/IState;

.field private mSm:Lcom/sec/internal/helper/StateMachine;

.field private mState:Lcom/sec/internal/helper/IState;

.field private mTime:J

.field private mWhat:I


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V
    .locals 0
    .param p1, "sm"    # Lcom/sec/internal/helper/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/sec/internal/helper/IState;
    .param p5, "orgState"    # Lcom/sec/internal/helper/IState;
    .param p6, "transToState"    # Lcom/sec/internal/helper/IState;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    invoke-virtual/range {p0 .. p6}, Lcom/sec/internal/helper/StateMachine$LogRec;->update(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V

    .line 470
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 495
    .local v1, "c":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 496
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const-string v3, "%tm-%td %tH:%tM:%tS.%tL"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v2, " processed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mState:Lcom/sec/internal/helper/IState;

    const-string v3, "<null>"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v2, " org="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mOrgState:Lcom/sec/internal/helper/IState;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v2, " dest="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mDstState:Lcom/sec/internal/helper/IState;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v2, " what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const-string v2, ""

    .line 505
    .local v2, "what":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 506
    iget v3, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mWhat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    const-string v3, "(0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget v3, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mWhat:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 511
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :goto_4
    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 514
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V
    .locals 2
    .param p1, "sm"    # Lcom/sec/internal/helper/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/sec/internal/helper/IState;
    .param p5, "orgState"    # Lcom/sec/internal/helper/IState;
    .param p6, "dstState"    # Lcom/sec/internal/helper/IState;

    .line 481
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mSm:Lcom/sec/internal/helper/StateMachine;

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mTime:J

    .line 483
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mWhat:I

    .line 484
    iput-object p3, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mInfo:Ljava/lang/String;

    .line 485
    iput-object p4, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mState:Lcom/sec/internal/helper/IState;

    .line 486
    iput-object p5, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mOrgState:Lcom/sec/internal/helper/IState;

    .line 487
    iput-object p6, p0, Lcom/sec/internal/helper/StateMachine$LogRec;->mDstState:Lcom/sec/internal/helper/IState;

    .line 488
    return-void
.end method
