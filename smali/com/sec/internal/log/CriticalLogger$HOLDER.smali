.class Lcom/sec/internal/log/CriticalLogger$HOLDER;
.super Ljava/lang/Object;
.source "CriticalLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/log/CriticalLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HOLDER"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/internal/log/CriticalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    new-instance v0, Lcom/sec/internal/log/CriticalLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/log/CriticalLogger;-><init>(Lcom/sec/internal/log/CriticalLogger$1;)V

    sput-object v0, Lcom/sec/internal/log/CriticalLogger$HOLDER;->INSTANCE:Lcom/sec/internal/log/CriticalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sec/internal/log/CriticalLogger;
    .locals 1

    .line 103
    sget-object v0, Lcom/sec/internal/log/CriticalLogger$HOLDER;->INSTANCE:Lcom/sec/internal/log/CriticalLogger;

    return-object v0
.end method
