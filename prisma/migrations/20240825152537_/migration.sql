/*
  Warnings:

  - The values [IN_PROGRESS,RESOLVED] on the enum `Ticket_status` will be removed. If these variants are still used in the database, this will fail.
  - The values [CRITICAL] on the enum `Ticket_priority` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `ticket` MODIFY `status` ENUM('OPEN', 'STARTED', 'CLOSED') NOT NULL DEFAULT 'OPEN',
    MODIFY `priority` ENUM('LOW', 'MEDIUM', 'HIGH') NOT NULL DEFAULT 'MEDIUM';
