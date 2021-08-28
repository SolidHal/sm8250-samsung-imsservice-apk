.class public final Lcom/sec/internal/constants/ims/core/RegistrationConstants$DeregiReason;
.super Ljava/lang/Object;
.source "RegistrationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/core/RegistrationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeregiReason"
.end annotation


# static fields
.field public static final NW_INITIATED:I = 0x1

.field public static final PERMANENT_BLOCKED:I = 0x21

.field public static final PERMANENT_FAILURE:I = 0x20

.field public static final TEMP_FAILURE:I = 0x10

.field public static final UE_TRIGGER:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
