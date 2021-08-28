.class Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;
.source "FtHttpIncomingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FtHttpStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;,
        Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;,
        Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;,
        Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;,
        Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;,
        Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private final mAcceptingState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;

.field private final mCanceledState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

.field private final mCompletedState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;

.field protected final mDbStateTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MappingTranslator<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/helper/State;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;

.field private final mInProgressState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;

.field private final mInitialState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

.field protected final mStateTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MappingTranslator<",
            "Lcom/sec/internal/helper/IState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 211
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Ljava/lang/String;Landroid/os/Looper;)V

    .line 188
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$1;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;

    .line 189
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$1;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    .line 190
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$1;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mAcceptingState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;

    .line 191
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$1;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mInProgressState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;

    .line 192
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$1;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCanceledState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    .line 193
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$1;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCompletedState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;

    .line 194
    new-instance p1, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    invoke-direct {p1}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    .line 196
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mAcceptingState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;

    .line 197
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mInProgressState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;

    .line 198
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCanceledState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    .line 199
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCompletedState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;

    .line 200
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->buildTranslator()Lcom/sec/internal/helper/translate/MappingTranslator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mStateTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    .line 202
    new-instance p1, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    invoke-direct {p1}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;-><init>()V

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mAcceptingState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;

    invoke-virtual {p1, v2, v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mInProgressState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;

    invoke-virtual {p1, v3, v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCanceledState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    invoke-virtual {p1, v4, v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCompletedState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;

    invoke-virtual {p1, v5, v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->buildTranslator()Lcom/sec/internal/helper/translate/MappingTranslator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mDbStateTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    .line 213
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mInProgressState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mAcceptingState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCompletedState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCanceledState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    return-object v0
.end method


# virtual methods
.method protected getState(Ljava/lang/Integer;)Lcom/sec/internal/helper/State;
    .locals 1
    .param p1, "stateId"    # Ljava/lang/Integer;

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mDbStateTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/translate/MappingTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/State;

    return-object v0
.end method

.method protected getStateId()I
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mStateTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/translate/MappingTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 238
    .local v0, "ret":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method protected initState(Lcom/sec/internal/helper/State;)V
    .locals 3
    .param p1, "currentState"    # Lcom/sec/internal/helper/State;

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mInitialState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InitialState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mAcceptingState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$AcceptingState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mInProgressState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$InProgressState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCanceledState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CanceledState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mCompletedState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$CompletedState;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->mDefaultState:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 224
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting current state as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for messageId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 227
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;->start()V

    .line 228
    return-void
.end method
