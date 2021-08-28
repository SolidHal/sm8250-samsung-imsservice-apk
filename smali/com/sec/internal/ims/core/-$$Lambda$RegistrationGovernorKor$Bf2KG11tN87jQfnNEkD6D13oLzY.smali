.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$Bf2KG11tN87jQfnNEkD6D13oLzY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$Bf2KG11tN87jQfnNEkD6D13oLzY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$Bf2KG11tN87jQfnNEkD6D13oLzY;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$Bf2KG11tN87jQfnNEkD6D13oLzY;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$Bf2KG11tN87jQfnNEkD6D13oLzY;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationGovernorKor$Bf2KG11tN87jQfnNEkD6D13oLzY;

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

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->lambda$handleAirplaneModeIntent$1(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
