.class public Lcom/sec/internal/helper/AtomicGenerator;
.super Ljava/lang/Object;
.source "AtomicGenerator.java"


# static fields
.field private static final mAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/sec/internal/helper/AtomicGenerator;->mAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateUniqueLong()J
    .locals 5

    .line 21
    sget-object v0, Lcom/sec/internal/helper/AtomicGenerator;->mAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 22
    .local v0, "ret":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 23
    sget-object v4, Lcom/sec/internal/helper/AtomicGenerator;->mAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 24
    sget-object v2, Lcom/sec/internal/helper/AtomicGenerator;->mAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 26
    :cond_0
    return-wide v0
.end method
