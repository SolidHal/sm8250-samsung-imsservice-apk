.class public Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;
.super Ljava/lang/Object;
.source "QualityStatistics.java"


# static fields
.field public static final ACTIONQUALITYSTATISTICS:Ljava/lang/String; = "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

.field public static final EVENTNAME:Ljava/lang/String; = "H015"

.field public static final EVENTTYPE:Ljava/lang/String; = "event_type"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->LOG_TAG:Ljava/lang/String;

    const-string v1, "QualityStatistics"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public sendQualityStatisticsEvent()V
    .locals 3

    .line 22
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendQualityStatisticsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v1, "event_type"

    const-string v2, "H015"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v1, "com.vzw.qualitydatalog"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
