.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$ActivationMode;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivationMode"
.end annotation


# static fields
.field public static final CANNOT_BE_ACTIVATED:I = 0x0

.field public static final CAN_BE_ACTIVATED:I = 0x3

.field public static final IN_PROGRESS:I = 0x1

.field public static final WEB_VIEW:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
