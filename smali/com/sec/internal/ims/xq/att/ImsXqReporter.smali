.class public Lcom/sec/internal/ims/xq/att/ImsXqReporter;
.super Landroid/os/Handler;
.source "ImsXqReporter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsXqReporterDummy"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static isXqEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 42
    return-void
.end method

.method public start()V
    .locals 2

    .line 33
    const-string v0, "ImsXqReporterDummy"

    const-string v1, "Not start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public stop()V
    .locals 2

    .line 37
    const-string v0, "ImsXqReporterDummy"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method
