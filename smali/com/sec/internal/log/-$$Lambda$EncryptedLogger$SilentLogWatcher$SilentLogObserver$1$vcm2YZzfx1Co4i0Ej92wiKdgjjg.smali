.class public final synthetic Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$vcm2YZzfx1Co4i0Ej92wiKdgjjg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$vcm2YZzfx1Co4i0Ej92wiKdgjjg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$vcm2YZzfx1Co4i0Ej92wiKdgjjg;

    invoke-direct {v0}, Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$vcm2YZzfx1Co4i0Ej92wiKdgjjg;-><init>()V

    sput-object v0, Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$vcm2YZzfx1Co4i0Ej92wiKdgjjg;->INSTANCE:Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$1$vcm2YZzfx1Co4i0Ej92wiKdgjjg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/Path;

    invoke-static {p1, p2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;->lambda$run$0(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method
