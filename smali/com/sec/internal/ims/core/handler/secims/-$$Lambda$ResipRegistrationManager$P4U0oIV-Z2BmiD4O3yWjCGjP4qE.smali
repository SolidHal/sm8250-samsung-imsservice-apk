.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$P4U0oIV-Z2BmiD4O3yWjCGjP4qE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$P4U0oIV-Z2BmiD4O3yWjCGjP4qE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$P4U0oIV-Z2BmiD4O3yWjCGjP4qE;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$P4U0oIV-Z2BmiD4O3yWjCGjP4qE;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$P4U0oIV-Z2BmiD4O3yWjCGjP4qE;->INSTANCE:Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$ResipRegistrationManager$P4U0oIV-Z2BmiD4O3yWjCGjP4qE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->lambda$isUserAgentInRegistered$0(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
