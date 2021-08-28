.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$XVqwAY2ifvQC2NsVu_T_lUVldO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$XVqwAY2ifvQC2NsVu_T_lUVldO4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$XVqwAY2ifvQC2NsVu_T_lUVldO4;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$XVqwAY2ifvQC2NsVu_T_lUVldO4;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$XVqwAY2ifvQC2NsVu_T_lUVldO4;->INSTANCE:Lcom/sec/internal/ims/core/handler/secims/-$$Lambda$XVqwAY2ifvQC2NsVu_T_lUVldO4;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/Mno;

    return-object p1
.end method
