.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$Vp4uFqqTWWQqyyuQrM_L_-eSEhU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$Vp4uFqqTWWQqyyuQrM_L_-eSEhU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$Vp4uFqqTWWQqyyuQrM_L_-eSEhU;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$Vp4uFqqTWWQqyyuQrM_L_-eSEhU;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$Vp4uFqqTWWQqyyuQrM_L_-eSEhU;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$Vp4uFqqTWWQqyyuQrM_L_-eSEhU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$handleEvent$4(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method
