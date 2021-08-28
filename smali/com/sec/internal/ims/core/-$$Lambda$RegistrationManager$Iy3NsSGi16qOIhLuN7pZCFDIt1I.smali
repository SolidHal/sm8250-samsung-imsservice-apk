.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$Iy3NsSGi16qOIhLuN7pZCFDIt1I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$Iy3NsSGi16qOIhLuN7pZCFDIt1I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$Iy3NsSGi16qOIhLuN7pZCFDIt1I;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$Iy3NsSGi16qOIhLuN7pZCFDIt1I;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$Iy3NsSGi16qOIhLuN7pZCFDIt1I;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$RegistrationManager$Iy3NsSGi16qOIhLuN7pZCFDIt1I;

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

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getImsProfile$0(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    return p1
.end method
