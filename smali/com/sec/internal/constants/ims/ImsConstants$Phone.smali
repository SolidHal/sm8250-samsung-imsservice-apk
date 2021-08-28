.class public Lcom/sec/internal/constants/ims/ImsConstants$Phone;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Phone"
.end annotation


# static fields
.field public static SLOT_1:I

.field public static SLOT_2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 493
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    .line 494
    const/4 v0, 0x1

    sput v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
