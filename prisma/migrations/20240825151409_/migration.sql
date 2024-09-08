/*
  Warnings:

  - The values [STARTED,CLOSED] on the enum `Ticket_status` will be removed. If these variants are still used in the database, this will fail.
  - The values [HIGH] on the enum `Ticket_priority` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `ticket` MODIFY `status` ENUM('OPEN', 'IN_PROGRESS', 'RESOLVED') NOT NULL DEFAULT 'OPEN',
    MODIFY `priority` ENUM('LOW', 'MEDIUM', 'CRITICAL') NOT NULL DEFAULT 'MEDIUM';
