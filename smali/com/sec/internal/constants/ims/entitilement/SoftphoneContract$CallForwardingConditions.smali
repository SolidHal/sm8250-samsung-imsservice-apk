.class public final Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$CallForwardingConditions;
.super Ljava/lang/Object;
.source "SoftphoneContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallForwardingConditions"
.end annotation


# static fields
.field public static final BUSY:I = 0x1

.field public static final NOT_REACHABLE:I = 0x3

.field public static final NO_ANSWER:I = 0x2

.field public static final SS_CF_TYPE_CFNL:I = 0x8

.field public static final UNCONDITIONAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
