.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$EntitlementStatus;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntitlementStatus"
.end annotation


# static fields
.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final INCOMPATIBLE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
