.class public final synthetic Lcom/sec/internal/ims/core/-$$Lambda$-M3aFGwHLqIk3rVMHxC5mm0IEws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$-M3aFGwHLqIk3rVMHxC5mm0IEws;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/-$$Lambda$-M3aFGwHLqIk3rVMHxC5mm0IEws;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/-$$Lambda$-M3aFGwHLqIk3rVMHxC5mm0IEws;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/-$$Lambda$-M3aFGwHLqIk3rVMHxC5mm0IEws;->INSTANCE:Lcom/sec/internal/ims/core/-$$Lambda$-M3aFGwHLqIk3rVMHxC5mm0IEws;

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

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    return-object p1
.end method
