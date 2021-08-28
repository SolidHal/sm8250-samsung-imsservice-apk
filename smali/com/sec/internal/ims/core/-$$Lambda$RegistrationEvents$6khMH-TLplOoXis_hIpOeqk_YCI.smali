.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$6khMH-TLplOoXis_hIpOeqk_YCI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$6khMH-TLplOoXis_hIpOeqk_YCI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$6khMH-TLplOoXis_hIpOeqk_YCI;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$6khMH-TLplOoXis_hIpOeqk_YCI;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$6khMH-TLplOoXis_hIpOeqk_YCI;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationEvents$6khMH-TLplOoXis_hIpOeqk_YCI;

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

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$static$2(Ljava/lang/reflect/Field;)Z

    move-result p1

    return p1
.end method
