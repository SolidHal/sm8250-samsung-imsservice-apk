.class Lcom/sec/internal/helper/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;,
        Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;,
        Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/sec/internal/helper/State;

.field private mHaltingState:Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lcom/sec/internal/helper/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/sec/internal/helper/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/internal/helper/State;",
            "Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 632
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/sec/internal/helper/StateMachine;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sm"    # Lcom/sec/internal/helper/StateMachine;

    .line 1167
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHasQuit:Z

    .line 627
    iput-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    .line 642
    new-instance v0, Lcom/sec/internal/helper/StateMachine$LogRecords;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/StateMachine$LogRecords;-><init>(Lcom/sec/internal/helper/StateMachine$1;)V

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    .line 657
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 672
    new-instance v0, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;-><init>(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/StateMachine$1;)V

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHaltingState:Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

    .line 677
    new-instance v0, Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;-><init>(Lcom/sec/internal/helper/StateMachine$1;)V

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    .line 717
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 1168
    iput-object p2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    .line 1170
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHaltingState:Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1171
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1172
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/sec/internal/helper/StateMachine;Lcom/sec/internal/helper/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/sec/internal/helper/StateMachine;
    .param p3, "x2"    # Lcom/sec/internal/helper/StateMachine$1;

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/helper/StateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 617
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/sec/internal/helper/IState;

    .line 617
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/internal/helper/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .line 617
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/internal/helper/StateMachine$SmHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 617
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$LogRecords;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 617
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/internal/helper/StateMachine$SmHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 617
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/internal/helper/StateMachine$SmHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 617
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 617
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/sec/internal/helper/State;
    .param p2, "x2"    # Lcom/sec/internal/helper/State;

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine$SmHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/helper/StateMachine$SmHandler;Lcom/sec/internal/helper/State;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/helper/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/sec/internal/helper/State;

    .line 617
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->setInitialState(Lcom/sec/internal/helper/State;)V

    return-void
.end method

.method private final addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    .locals 5
    .param p1, "state"    # Lcom/sec/internal/helper/State;
    .param p2, "parent"    # Lcom/sec/internal/helper/State;

    .line 1130
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1134
    :cond_1
    const/4 v0, 0x0

    .line 1135
    .local v0, "parentStateInfo":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1136
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1137
    if-nez v0, :cond_2

    .line 1139
    invoke-direct {p0, p2, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .line 1142
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1143
    .local v2, "stateInfo":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    if-nez v2, :cond_3

    .line 1144
    new-instance v3, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    invoke-direct {v3, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;-><init>(Lcom/sec/internal/helper/StateMachine$1;)V

    move-object v2, v3

    .line 1145
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    :cond_3
    iget-object v1, v2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    if-eqz v1, :cond_5

    iget-object v1, v2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    if-ne v1, v0, :cond_4

    goto :goto_1

    .line 1151
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "state already added"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1153
    :cond_5
    :goto_1
    iput-object p1, v2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    .line 1154
    iput-object v0, v2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1155
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1156
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1157
    :cond_6
    return-object v2
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-static {v0}, Lcom/sec/internal/helper/StateMachine;->access$400(Lcom/sec/internal/helper/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 902
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/StateMachine;->access$402(Lcom/sec/internal/helper/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/StateMachine;->access$502(Lcom/sec/internal/helper/StateMachine;Lcom/sec/internal/helper/StateMachine$SmHandler;)Lcom/sec/internal/helper/StateMachine$SmHandler;

    .line 906
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    .line 907
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 908
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine$LogRecords;->cleanup()V

    .line 909
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 910
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 911
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 912
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mInitialState:Lcom/sec/internal/helper/State;

    .line 913
    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    .line 914
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHasQuit:Z

    .line 916
    return-void
.end method

.method private final completeConstruction()V
    .locals 5

    .line 922
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 928
    :cond_0
    const/4 v0, 0x0

    .line 929
    .local v0, "maxDepth":I
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 930
    .local v2, "si":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    const/4 v3, 0x0

    .line 931
    .local v3, "depth":I
    move-object v4, v2

    .local v4, "i":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    :goto_1
    if-eqz v4, :cond_1

    .line 932
    iget-object v4, v4, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 931
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 934
    .end local v4    # "i":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    :cond_1
    if-ge v0, v3, :cond_2

    .line 935
    move v0, v3

    .line 937
    .end local v2    # "si":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    .end local v3    # "depth":I
    :cond_2
    goto :goto_0

    .line 938
    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 940
    :cond_4
    new-array v1, v0, [Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 941
    new-array v1, v0, [Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 942
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->setupInitialStateStack()V

    .line 945
    const/4 v1, -0x2

    sget-object v2, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/helper/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 947
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    const-string v2, "completeConstruction: X"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 948
    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1194
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1198
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1200
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    return-void
.end method

.method private final getCurrentState()Lcom/sec/internal/helper/IState;
    .locals 3

    .line 1114
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    if-eqz v1, :cond_1

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    return-object v0

    .line 1115
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4
    .param p1, "stateStackEnteringIndex"    # I

    .line 1005
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gt v0, v1, :cond_1

    .line 1006
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v3}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1007
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v1}, Lcom/sec/internal/helper/State;->enter()V

    .line 1008
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private final invokeExitMethods(Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;)V
    .locals 4
    .param p1, "commonStateInfo"    # Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 991
    :goto_0
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v2, v1, v0

    if-eq v2, p1, :cond_1

    .line 993
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    .line 994
    .local v0, "curState":Lcom/sec/internal/helper/State;
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 995
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/helper/State;->exit()V

    .line 996
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->active:Z

    .line 997
    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 998
    .end local v0    # "curState":Lcom/sec/internal/helper/State;
    goto :goto_0

    .line 999
    :cond_1
    return-void
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1215
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .line 1022
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1023
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1024
    .local v1, "curMsg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1025
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1022
    .end local v1    # "curMsg":Landroid/os/Message;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1027
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1028
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 7

    .line 1038
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 1039
    .local v0, "startingIndex":I
    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, -0x1

    .line 1040
    .local v1, "i":I
    move v2, v0

    .line 1041
    .local v2, "j":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1042
    iget-boolean v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1043
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 1044
    add-int/lit8 v2, v2, 0x1

    .line 1045
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1048
    :cond_1
    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1049
    iget-boolean v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_2

    .line 1050
    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",startingIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v6, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    .line 1052
    invoke-virtual {v5}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1050
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1054
    :cond_2
    return v0
.end method

.method private performTransitions(Lcom/sec/internal/helper/State;Landroid/os/Message;)V
    .locals 9
    .param p1, "msgProcessedState"    # Lcom/sec/internal/helper/State;
    .param p2, "msg"    # Landroid/os/Message;

    .line 805
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-nez v0, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    .line 819
    .local v0, "orgState":Lcom/sec/internal/helper/State;
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v8, v1

    .line 821
    .local v8, "recordLogMsg":Z
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 823
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    if-eqz v1, :cond_3

    .line 824
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/helper/StateMachine$LogRecords;->add(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 827
    :cond_2
    if-eqz v8, :cond_3

    .line 829
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mLogRecords:Lcom/sec/internal/helper/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/helper/StateMachine$LogRecords;->add(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V

    .line 833
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    .line 834
    .local v1, "destState":Lcom/sec/internal/helper/State;
    if-eqz v1, :cond_6

    move-object v2, v1

    .line 839
    .end local v1    # "destState":Lcom/sec/internal/helper/State;
    .local v2, "destState":Lcom/sec/internal/helper/State;
    :goto_2
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz v1, :cond_4

    .line 840
    const-string v3, "handleMessage: new destination call exit/enter"

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 847
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/internal/helper/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    move-result-object v3

    .line 848
    .local v3, "commonStateInfo":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    monitor-enter p0

    .line 849
    :try_start_0
    invoke-direct {p0, v3}, Lcom/sec/internal/helper/StateMachine$SmHandler;->invokeExitMethods(Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;)V

    .line 850
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result v1

    .line 851
    .local v1, "stateStackEnteringIndex":I
    invoke-direct {p0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 852
    .end local v1    # "stateStackEnteringIndex":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 862
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    if-eq v2, v1, :cond_5

    .line 864
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    .line 869
    .end local v3    # "commonStateInfo":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    goto :goto_2

    .line 870
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    move-object v1, v2

    goto :goto_3

    .line 852
    .restart local v3    # "commonStateInfo":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 877
    .end local v2    # "destState":Lcom/sec/internal/helper/State;
    .end local v3    # "commonStateInfo":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    .local v1, "destState":Lcom/sec/internal/helper/State;
    :cond_6
    :goto_3
    if-eqz v1, :cond_8

    .line 878
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    if-ne v1, v2, :cond_7

    .line 882
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-virtual {v2}, Lcom/sec/internal/helper/StateMachine;->onQuitting()V

    .line 883
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->cleanupAfterQuitting()V

    goto :goto_4

    .line 884
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHaltingState:Lcom/sec/internal/helper/StateMachine$SmHandler$HaltingState;

    if-ne v1, v2, :cond_8

    .line 890
    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-virtual {v2}, Lcom/sec/internal/helper/StateMachine;->onHalting()V

    .line 893
    :cond_8
    :goto_4
    return-void
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/sec/internal/helper/State;
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 958
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    .line 959
    .local v0, "curStateInfo":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    const-string/jumbo v2, "processMsg: "

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v4}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 963
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mQuittingState:Lcom/sec/internal/helper/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 966
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 970
    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 971
    if-nez v0, :cond_2

    .line 975
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    .line 976
    goto :goto_1

    .line 978
    :cond_2
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    .line 979
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    invoke-virtual {v4}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->state:Lcom/sec/internal/helper/State;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method private final quit()V
    .locals 2

    .line 1207
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    const-string/jumbo v1, "quit:"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1208
    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1209
    return-void
.end method

.method private final setInitialState(Lcom/sec/internal/helper/State;)V
    .locals 3
    .param p1, "initialState"    # Lcom/sec/internal/helper/State;

    .line 1178
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1179
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mInitialState:Lcom/sec/internal/helper/State;

    .line 1180
    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 3

    .line 1093
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {v2}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1098
    .local v0, "curStateInfo":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    if-eqz v0, :cond_1

    .line 1099
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1100
    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1098
    iget v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1104
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1106
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    .line 1107
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/sec/internal/helper/State;)Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    .locals 4
    .param p1, "destState"    # Lcom/sec/internal/helper/State;

    .line 1075
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1076
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1078
    .local v0, "curStateInfo":Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStack:[Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1079
    iget-object v0, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;

    .line 1080
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/sec/internal/helper/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    .line 1082
    :cond_1
    iget-boolean v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 1083
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1086
    :cond_2
    return-object v0
.end method

.method private final transitionTo(Lcom/sec/internal/helper/IState;)V
    .locals 3
    .param p1, "destState"    # Lcom/sec/internal/helper/IState;

    .line 1186
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/helper/State;

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    .line 1187
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionTo: destState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDestState:Lcom/sec/internal/helper/State;

    invoke-virtual {v2}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 1188
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 763
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v0, :cond_5

    .line 764
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    .line 768
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: E msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 771
    :cond_1
    iput-object p1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "msgProcessedState":Lcom/sec/internal/helper/State;
    iget-boolean v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-eqz v3, :cond_2

    .line 777
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/sec/internal/helper/State;

    move-result-object v0

    goto :goto_0

    .line 778
    :cond_2
    if-nez v3, :cond_4

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v4, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v3, v4, :cond_4

    .line 781
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    .line 782
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/internal/helper/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 788
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine$SmHandler;->performTransitions(Lcom/sec/internal/helper/State;Landroid/os/Message;)V

    .line 791
    iget-boolean v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz v3, :cond_3

    const-string v4, "handleMessage: X"

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    .line 793
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    if-eqz v3, :cond_5

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v2, :cond_5

    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_5

    .line 794
    iget-object v1, p0, Lcom/sec/internal/helper/StateMachine$SmHandler;->mSm:Lcom/sec/internal/helper/StateMachine;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/StateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 784
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    .end local v0    # "msgProcessedState":Lcom/sec/internal/helper/State;
    :cond_5
    :goto_1
    return-void
.end method
