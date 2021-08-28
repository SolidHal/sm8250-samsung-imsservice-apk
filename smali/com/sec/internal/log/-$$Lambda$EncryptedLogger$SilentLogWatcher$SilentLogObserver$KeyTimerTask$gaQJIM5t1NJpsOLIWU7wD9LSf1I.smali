.class public final synthetic Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$gaQJIM5t1NJpsOLIWU7wD9LSf1I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$gaQJIM5t1NJpsOLIWU7wD9LSf1I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$gaQJIM5t1NJpsOLIWU7wD9LSf1I;

    invoke-direct {v0}, Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$gaQJIM5t1NJpsOLIWU7wD9LSf1I;-><init>()V

    sput-object v0, Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$gaQJIM5t1NJpsOLIWU7wD9LSf1I;->INSTANCE:Lcom/sec/internal/log/-$$Lambda$EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$gaQJIM5t1NJpsOLIWU7wD9LSf1I;

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

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->lambda$run$0(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method
