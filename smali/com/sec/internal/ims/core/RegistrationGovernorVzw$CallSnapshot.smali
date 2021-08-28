.class Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;
.super Ljava/lang/Object;
.source "RegistrationGovernorVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallSnapshot"
.end annotation


# instance fields
.field private mCallType:I

.field private mError:Lcom/sec/ims/util/SipError;

.field private mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)Lcom/sec/ims/util/SipError;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mError:Lcom/sec/ims/util/SipError;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;

    .line 111
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mCallType:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 127
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 128
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallSnapshot(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 0
    .param p1, "event"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "callType"    # I

    .line 121
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mEvent:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 122
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mError:Lcom/sec/ims/util/SipError;

    .line 123
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorVzw$CallSnapshot;->mCallType:I

    .line 124
    return-void
.end method
