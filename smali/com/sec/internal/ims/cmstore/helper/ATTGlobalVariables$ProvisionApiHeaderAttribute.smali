.class public Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables$ProvisionApiHeaderAttribute;
.super Ljava/lang/Object;
.source "ATTGlobalVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisionApiHeaderAttribute"
.end annotation


# static fields
.field public static final mContentType:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final mGzip:Z = false

.field public static final mKeepAlive:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
