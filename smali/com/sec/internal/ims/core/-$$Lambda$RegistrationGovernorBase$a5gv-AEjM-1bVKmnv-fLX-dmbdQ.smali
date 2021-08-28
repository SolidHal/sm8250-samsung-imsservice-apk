.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorBase$a5gv-AEjM-1bVKmnv-fLX-dmbdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorBase$a5gv-AEjM-1bVKmnv-fLX-dmbdQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorBase$a5gv-AEjM-1bVKmnv-fLX-dmbdQ;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorBase$a5gv-AEjM-1bVKmnv-fLX-dmbdQ;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorBase$a5gv-AEjM-1bVKmnv-fLX-dmbdQ;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorBase$a5gv-AEjM-1bVKmnv-fLX-dmbdQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->lambda$hasEmergencyTaskInPriority$0(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p1

    return p1
.end method
