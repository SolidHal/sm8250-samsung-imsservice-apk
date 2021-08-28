.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$NotifState;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifState"
.end annotation


# static fields
.field public static final IN_PROGRESS:Ljava/lang/String; = "IN_PROGRESS"

.field public static final NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final READY:Ljava/lang/String; = "READY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
