.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$P0H322xlBdslh7IByTbbM8XV27M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$P0H322xlBdslh7IByTbbM8XV27M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$P0H322xlBdslh7IByTbbM8XV27M;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$P0H322xlBdslh7IByTbbM8XV27M;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$P0H322xlBdslh7IByTbbM8XV27M;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSession$P0H322xlBdslh7IByTbbM8XV27M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->lambda$processPendingFtHttp$1(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)I

    move-result p1

    return p1
.end method
