.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$s8c69XYNgDxHzmtOH8_cwiDgYsI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$s8c69XYNgDxHzmtOH8_cwiDgYsI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$s8c69XYNgDxHzmtOH8_cwiDgYsI;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$s8c69XYNgDxHzmtOH8_cwiDgYsI;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$s8c69XYNgDxHzmtOH8_cwiDgYsI;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$s8c69XYNgDxHzmtOH8_cwiDgYsI;

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

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    return p1
.end method
