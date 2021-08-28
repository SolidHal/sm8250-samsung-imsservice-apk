.class public Lcom/sec/internal/constants/ims/ImsConstants$ServiceType;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceType"
.end annotation


# static fields
.field public static final RCS:I = 0x2

.field public static final VIDEO:I = 0x1

.field public static final VOICE:I = 0x0

.field public static final VOWIFI:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
