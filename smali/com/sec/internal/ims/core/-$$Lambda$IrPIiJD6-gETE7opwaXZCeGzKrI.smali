.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$IrPIiJD6-gETE7opwaXZCeGzKrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$IrPIiJD6-gETE7opwaXZCeGzKrI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$IrPIiJD6-gETE7opwaXZCeGzKrI;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$IrPIiJD6-gETE7opwaXZCeGzKrI;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$IrPIiJD6-gETE7opwaXZCeGzKrI;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$IrPIiJD6-gETE7opwaXZCeGzKrI;

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

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    return p1
.end method
